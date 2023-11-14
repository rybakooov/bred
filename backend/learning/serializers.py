from rest_framework import serializers

from files.models import ImageFile, DocumentFile, VideoFile
from files.serializers import ImageFileSerializer, DocumentFileSerializer, VideoFileSerializer
from learning.models import Subject, Lesson, QuestionAnswer, TestAssignmentQuestion, TestAssignment, LessonRating


class LessonSubjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = Subject
        fields = ('id', 'uuid', 'name', 'slug')


class BaseLessonSerializer(serializers.ModelSerializer):
    class Meta:
        model = Lesson
        fields = ('id', 'uuid', 'name', 'order',)


class LessonSerializer(BaseLessonSerializer):
    image = serializers.SlugRelatedField(slug_field='uuid', queryset=ImageFile.objects.all(), required=False,
                                         allow_null=True)
    document = serializers.SlugRelatedField(slug_field='uuid', queryset=DocumentFile.objects.all(), required=False,
                                            allow_null=True)
    video = serializers.SlugRelatedField(slug_field='uuid', queryset=VideoFile.objects.all(), required=False,
                                         allow_null=True)

    class Meta(BaseLessonSerializer.Meta):
        fields = (
            *BaseLessonSerializer.Meta.fields,
            'outline',
            'image',
            'video',
            'document',
            'is_visible',
            'slug',
            'test'
        )

    def create(self, validated_data):
        validated_data['subject'] = self.context['subject']
        return super().create(validated_data)

    def update(self, instance: Lesson, validated_data):
        for file_type in ('document', 'video', 'image'):
            if file_type in validated_data and (old_file := getattr(instance, file_type)):
                old_file.delete()
        # If we make last visible lesson invisible -> we make subject invisible
        if instance.is_visible and validated_data.get('is_visible') is False and instance.subject.lessons_count == 1:
            subj = instance.subject
            subj.is_visible = False
            subj.save()
        return super().update(instance, validated_data)

    def to_representation(self, instance: Lesson):
        ret = super().to_representation(instance)
        ret['subject'] = LessonSubjectSerializer(instance.subject, read_only=True).data
        ret['image'] = ImageFileSerializer(instance.image, read_only=True).data
        ret['document'] = DocumentFileSerializer(instance.document, read_only=True).data
        ret['video'] = VideoFileSerializer(instance.video, read_only=True).data
        return ret
    

class LessonRatingSerializer(serializers.ModelSerializer):
    lesson = BaseLessonSerializer(read_only=True)
    user = serializers.EmailField(source='user.email', read_only=True)
    uuid = serializers.UUIDField(read_only=True)

    class Meta:
        model = LessonRating
        fields = ('rate', 'user', 'lesson', 'uuid')
        
    def create(self, validated_data):
        if old_rating := LessonRating.objects.filter(user=self.context['user'], lesson=self.context['lesson']).first():
            old_rating.delete()
        validated_data = {'user': self.context['user'], 'lesson': self.context['lesson'], **validated_data}
        return super().create(validated_data)


class LessonDetailSerializer(LessonSerializer):
    user_rating = serializers.SerializerMethodField()

    class Meta(LessonSerializer.Meta):
        fields = (*LessonSerializer.Meta.fields, 'outline', 'video', 'image', 'document', 'user_rating')

    def get_user_rating(self, obj: Lesson):
        user_rating = LessonRating.objects.filter(user=self.context['user'], lesson=obj).first()
        return LessonRatingSerializer(user_rating).data if user_rating else None


class SubjectSerializer(serializers.ModelSerializer):
    lessons = BaseLessonSerializer(many=True, required=False)
    image = serializers.SlugRelatedField(slug_field='uuid', queryset=ImageFile.objects.all(), required=False,
                                         allow_null=True)

    class Meta:
        model = Subject
        fields = '__all__'

    def update(self, instance: Lesson, validated_data):
        if 'image' in validated_data and (old_file := getattr(instance, 'image')):
            old_file.delete()
        return super().update(instance, validated_data)

    def to_representation(self, instance):
        ret = super().to_representation(instance)
        ret['image'] = ImageFileSerializer(instance.image, read_only=True).data
        return ret


class SubjectDetailSerializer(SubjectSerializer):
    lessons = LessonDetailSerializer(many=True)


class QuestionAnswerSerializer(serializers.ModelSerializer):
    class Meta:
        model = QuestionAnswer
        fields = ('answer_text', 'is_correct', 'explanation', 'id')


class TestAssignmentQuestionSerializer(serializers.ModelSerializer):
    answers = QuestionAnswerSerializer(many=True)
    image = serializers.SlugRelatedField(slug_field='uuid', queryset=ImageFile.objects.all(), allow_null=True,
                                         required=False, default=None)

    class Meta:
        model = TestAssignmentQuestion
        fields = ('id', 'question_text', 'image', 'answers',)

    def to_representation(self, instance):
        ret = super().to_representation(instance)
        if instance.image:
            ret['image'] = ImageFileSerializer(instance.image, read_only=True).data
        return ret


class TestAssignmentSerializer(serializers.ModelSerializer):
    origin = serializers.SerializerMethodField()
    questions = TestAssignmentQuestionSerializer(many=True)

    class Meta:
        model = TestAssignment
        fields = ('id', 'origin', 'questions')

    def validate(self, attrs):
        for question_data in attrs['questions']:
            question = question_data['question_text']
            if not any([answer['is_correct'] for answer in question_data['answers']]):
                raise serializers.ValidationError(f'question "{question}" has no correct answers')
        return attrs
        
    def create(self, validated_data):
        test_assignment = TestAssignment.objects.create()
        for question_data in validated_data['questions']:
            question: TestAssignmentQuestion = TestAssignmentQuestion.objects.create(
                question_text=question_data['question_text'], test=test_assignment, image=question_data.get('image')
            )
            for answer_data in question_data['answers']:
                question.answers.create(**answer_data)
        if subject := self.context.get('subject'):
            subject.test = test_assignment
            subject.save()
        elif lesson := self.context.get('lesson'):
            lesson.test = test_assignment
            subject.save()
        return test_assignment

    @staticmethod
    def get_origin(obj: TestAssignment):
        return obj.get_master_model().name


class TestAssignmentUserAnswerSerializer(serializers.Serializer):
    question_id = serializers.IntegerField()
    answer_id = serializers.IntegerField()


class TestAssignmentResultSerializer(serializers.Serializer):
    results = TestAssignmentUserAnswerSerializer(many=True)

    def validate(self, attrs):
        attrs = super().validate(attrs)
        if not self.context['test'].is_successful_attempt(attrs['results']):
            raise serializers.ValidationError('unsuccessful_attempt')
        else:
            return attrs
