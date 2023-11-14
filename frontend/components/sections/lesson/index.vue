<template>
  <section :class="$style.container">
    <section-lesson-header :class="$style.header" :title="title" />
    <section-lesson-content :class="$style.content" />
  </section>
</template>

<script>
  import SectionLessonHeader from '~/components/sections/lesson/header'
  import SectionLessonContent from '~/components/sections/lesson/content'
  import { mapState } from 'vuex'

  export default {
    name: 'SectionLesson',
    components: {
      SectionLessonContent,
      SectionLessonHeader
    },
    computed: {
      ...mapState('lessons', ['lesson']),
      title() {
        return `Урок ${this.lesson?.order + 1 }. ${ this.lesson?.name }`
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    display: flex;
    flex-direction: column;
    width: 100%;
  }
  .content {
    flex: 1;
  }
</style>
