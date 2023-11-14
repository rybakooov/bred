<template>
  <article :class="$style.container">
    <main :class="$style.content">
      <section-lesson-content-video v-if="lesson && lesson.video && lesson.video.url" :src="lesson.video.url" />
      <div :class="$style.text">
        <template v-for="(item, index) in outline">
          <p v-if="item.text" :key="index + '_outline_text'" v-html="item.text"/>
          <div v-if="item.image" :key="index + '_outline_image'" :class="$style.img">
            <img :src="getImage(item.image)" alt="">
          </div>
        </template>
      </div>
      <ui-button theme="red" size="md" @click="onClick" v-if="test">{{ test.questions[0].question_text === '0' ? (next ? 'К следующему уроку' : 'Итоговый тест') : 'Пройти тест' }}</ui-button>
      <section-lesson-content-materials v-if="document" :src="document" :name="lesson.document.file.split('/').reverse()[0]" />
      <section-lesson-content-rate :theme-id="lesson.subject.id" :lesson-id="lesson.id" />
    </main>
  </article>
</template>

<script>
  import SectionLessonContentVideo from '~/components/sections/lesson/content/video'
  import UiButton from '~/components/ui/button'
  import SectionLessonContentMaterials from '~/components/sections/lesson/content/materials'
  import SectionLessonContentRate from '~/components/sections/lesson/content/rate'
  import { mapActions, mapState } from 'vuex'
  import logo from '~/components/icons/logo'
  export default {
    name: 'SectionLessonContent',
    components: {
      SectionLessonContentVideo,
      SectionLessonContentRate,
      SectionLessonContentMaterials,
      UiButton
      // SectionLessonContentVideo
    },
    data() {
      return {
        next: null
      }
    },
    computed: {
      ...mapState('lessons', ['lesson', 'test']),
      ...mapState('subjects', ['subject']),
      video() {
        if (this.lesson.video?.file) {
          return process.env.NODE_ENV === 'development' ? `http://localhost:8000${this.lesson.video.file}` : `https://api.trade-study.ru${this.lesson.video.file}`
        } else {
          return ''
        }
      },
      document() {
        if (this.lesson.document?.file) {
          return process.env.NODE_ENV === 'development' ? `http://localhost:8000${this.lesson.document.file}` : `https://api.trade-study.ru${this.lesson.document.file}`
        } else {
          return ''
        }
      },
      outline() {
        return JSON.parse(this.lesson.outline?.replace(new RegExp('\\\\n', 'g'), "<br />") || "[]")
      }
    },
    methods: {
      ...mapActions('lessons', ['checkTest']),
      async onClick() {
        if (this.test.questions[0].question_text === '0') {
          const res = await this.checkTest({
            subjectId: this.$route.params.theme,
            lessonId: this.$route.params.lesson,
            results: [{ question_id: this.test.questions[0].id, answer_id: this.test.questions[0].answers[0].id }]
          })
          try {
            const next = await this.$axios.$get(`/subjects/${this.lesson.subject.id}/lessons/${this.lesson.id}/next/`)
            console.log(next)
            console.log(this.lesson)
            console.log(this.theme)
            try {
              await this.$router.push(`/themes/${next.subject.id}/${next.id}/lesson`)
            } catch (e) {
              await this.$router.push(`/profile`)
            }
          } catch (e) {
            await this.$router.push(`/themes/${this.lesson.subject.id}/test`)
          }
        } else {
          await this.$router.push(`/themes/${this.lesson.subject.id}/${this.lesson.id}/test`)
        }
      },
      getImage(imgPath) {
        return !imgPath ? '' : process.env.NODE_ENV === 'development' ? `http://localhost:8000${imgPath}` : `https://api.trade-study.ru${imgPath}`
      }
    },
    async mounted() {
      try {
        const next = await this.$axios.$get(`/subjects/${this.lesson.subject.id}/lessons/${this.lesson.id}/next/`)
        if (next) {
          this.next = true
        }
      } catch (e) {
        this.next = false
      }
    },
    watch: {
      lesson: {
        deep: true,
        async handler() {
          try {
            const next = await this.$axios.$get(`/subjects/${this.lesson.subject.id}/lessons/${this.lesson.id}/next/`)
            if (next) {
              this.next = true
            }
          } catch (e) {
            this.next = false
          }
        }
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    padding: 3.2em var(--root-layout-offset) 6.4em;
    background-color: var(--root-color-base-0);
    grid-template-columns: 22.4em 1fr 22.4em;
    display: grid;
    @include down(lg) {
      grid-template-columns: 1fr;
      padding: 2.4em var(--root-layout-offset) 4em;
    }
  }

  .content {
    grid-column: 2 / 3;
    @include down(xxl) {
      grid-column: 1 / -1;
    }
  }

  .text {
    display: grid;
    grid-gap: 1.6em;
    color: var(--root-color-base-900);
    margin: 3.2em 0;
    width: 100%;
    @include down(lg) {
      margin: 2.4em 0;
    }
    @include down(md) {
      grid-gap: 1.2em;
    }
    p {
      font-size: 1.8em;
      line-height: 1.56;
      //word-break: break-all;
      @include down(md) {
        font-size: 1.6em;
        line-height: 1.5;
      }
    }
  }

  .img {
    width: 100%;
    border: 1px solid var(--root-color-base-200);
    border-radius: 1.2em;
    max-height: 56em;
    overflow: hidden;
    img {
      width: 100%;
      height: 100%;
      object-fit: contain;
      object-position: center;
      display: block;
    }
  }
</style>
