<template>
  <v-container v-if="lesson">
    <v-btn @click="$router.push(`/themes/${themeId}`)" class="mb-4">
      <v-icon small>mdi-arrow-left</v-icon>Назад к теме
    </v-btn>
    <h1 class="text-h3 font-weight-medium">
      Урок "<span contenteditable @blur="onChange({ name: name })" @input="name = $event.target.innerText">{{ lesson.name }}</span>"
    </h1>
    <v-tabs centered v-model="tab" class="mt-4">
      <v-tab
        v-for="item in items"
        :key="item.name"
      >
        {{ item.name }}
      </v-tab>
    </v-tabs>
    <v-tabs-items class="mt-4" v-model="tab">
      <v-tab-item
        v-for="item in items"
        :key="item.name"
      >
        <component :is="item.component" />
      </v-tab-item>
    </v-tabs-items>
  </v-container>
</template>

<script>
  import { mapState, mapActions } from 'vuex'
  import LessonQuestions from '@/components/sections/lesson/questions'
  import LessonMain from '@/components/sections/lesson/main'

  export default {
    name: 'SectionLesson',
    data() {
      return {
        name: '',
        tab: null,
        items: [
          {
            name: 'Урок',
            component: LessonMain,
            key: 'main'
          }, {
            name: 'Тест',
            component: LessonQuestions,
            key: 'test'
          }
        ]
      }
    },
    computed: {
      ...mapState('lessons', ['lesson', 'test']),
      themeId() {
        return this.$route.params.themes
      },
      lessonId() {
        return this.$route.params.lesson
      }
    },
    methods: {
      ...mapActions('lessons', ['getItem', 'update', 'getTest']),
      ...mapActions('notifications', ['addNotify']),
      async onChange(data) {
        try {
          await this.update({ themeId: this.themeId, lessonId: this.lessonId, lessonData: data })
          this.addNotify({
            type: 'success',
            text: 'Сохранено'
          })
          await this.getItem({ subjectId: this.themeId, lessonId: this.lessonId })
        } catch (e) {
          this.addNotify({
            type: 'error',
            text: e.message
          })
        }
      }
    },
    async mounted() {
      await this.getItem({ subjectId: this.themeId, lessonId: this.lessonId })
      await this.getTest({ subjectId: this.themeId, lessonId: this.lessonId })
      if (this.test) {
        this.questions = [...this.test.questions]
      }
    }
  }
</script>

<style module lang="scss">

</style>
