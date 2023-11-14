<template>
  <section-lesson v-if="lesson" />
</template>

<script>
  import pageMixin from '../../../../mixins/page'
  import SectionLesson from '~/components/sections/lesson'
  import { mapActions, mapState } from 'vuex'

  export default {
    components: {
      SectionLesson
    },
    layout: 'default',
    name: 'LessonPage',
    mixins: [
      pageMixin()
    ],
    computed: {
      ...mapState('lessons', ['lesson']),
      title() {
        return `Урок "${this.lesson?.name || '-'}" | Тема "${this.lesson?.subject.name || '-'}"`
      },
      themeId() {
        return this.$route.params.theme
      },
      lessonId() {
        return this.$route.params.lesson
      }
    },
    methods: {
      ...mapActions('lessons', ['getItem', 'getTest'])
    },
    async mounted () {
      await this.getItem({ subjectId: this.themeId, lessonId: this.lessonId })
      await this.getTest({ subjectId: this.themeId, lessonId: this.lessonId })
    }
  }
</script>
