<template>
  <section :class="$style.container" v-if="source && test">
    <section-lesson-header :class="$style.header" :title="`Тест: ${ source.name }`" />
    <div :class="$style.content">
      <div :class="$style.test">
        <transition name="fade">
          <div :class="$style.img" v-if="test.questions[currentQuestionIndex].image">
            <img :src="getImage(test.questions[currentQuestionIndex].image.file)" alt="">
          </div>
        </transition>
        <h2 :class="$style.title">
          <span :class="$style.t">{{ test.questions[currentQuestionIndex].question_text }}</span>
        </h2>
        <div :class="$style.answers">
          <button
            :class="[$style.item, showErrors && answer.id === clickedAnswerId ? (answer.is_correct ? $style.green : $style.red) : null]"
            v-for="answer in test.questions[currentQuestionIndex].answers"
            :key="answer.id"
            @click="setAnswer(test.questions[currentQuestionIndex].id, answer.id)"
            :disabled="showErrors"
          >
            <span :class="$style.mark">
              <svg v-if="answer.is_correct" width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M4.99999 7.586L9.59599 2.9895L10.3035 3.6965L4.99999 9L1.81799 5.818L2.52499 5.111L4.99999 7.586Z" fill="#27AE60"/>
              </svg>
              <svg v-else width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M6.00011 5.29299L8.47512 2.81799L9.18212 3.52499L6.70711 5.99999L9.18212 8.47499L8.47512 9.18199L6.00011 6.70699L3.52512 9.18199L2.81812 8.47499L5.29312 5.99999L2.81812 3.52499L3.52512 2.81799L6.00011 5.29299Z" fill="#EB5757"/>
              </svg>
            </span>
            <span :class="$style.t">{{ answer.answer_text }}</span>
          </button>
          <transition name="slideUp">
            <p v-if="res" :class="$style.res">
              <span :class="$style.t">{{ res.is_correct ? 'Верно' : 'Не верно' }}</span>
            </p>
          </transition>
        </div>
      </div>
    </div>
    <div :class="$style.controller">
      <div :class="$style.controllerContent">
        <span :class="$style.t">{{ currentQuestionIndex + 1 }}/{{ test.questions.length }}</span>

        <div :class="$style.progress">
          <span :class="$style.line" :style="{ width: (currentQuestionIndex + 1) / test.questions.length * 100 + '%'}"></span>
        </div>

        <ui-button theme="red" :disabled="!showErrors" size="md" @click="nextQuestion">Далее</ui-button>
      </div>
    </div>
  </section>
</template>

<script>
  import { mapState } from 'vuex'
  import SectionLessonHeader from '~/components/sections/lesson/header'
  import UiButton from '~/components/ui/button'

  export default {
    name: 'SectionTest',
    components: {
      UiButton,
      SectionLessonHeader
    },
    data() {
      return {
        clickedAnswerId: null,
        showErrors: false,
        currentAnswerId: null,
        currentQuestionIndex: 0,
        currentQuestionId: null,
        results: []
      }
    },
    computed: {
      ...mapState('lessons', {
        lesson: 'lesson',
        lessonTest: 'test'
      }),
      ...mapState('subjects', {
        subject: 'subject',
        subjectTest: 'test'
      }),
      source() {
        return this.$route.params.lesson ? this.lesson : this.subject
      },
      test() {
        return this.$route.params.lesson ? this.lessonTest : this.subjectTest
      },
      res() {
        return this.test.questions[this.currentQuestionIndex].answers.find(el => el.id === this.clickedAnswerId)
      }
    },
    methods: {
      setAnswer(qId, aId) {
        this.results.push({
          question_id: qId,
          answer_id: aId
        })
        this.showErrors = true
        this.clickedAnswerId = aId
      },
      addResultToArrayAndShow() {
      },
      getImage(imgPath) {
        return !imgPath ? '' : process.env.NODE_ENV === 'development' ? `http://localhost:8000${imgPath}` : `https://api.trade-study.ru${imgPath}`
      },
      nextQuestion() {
        if (!this.test.questions[this.currentQuestionIndex + 1]) {
          this.$emit('show-results', this.results)
          return
        }
        this.currentQuestionIndex++
        this.showErrors = false
        this.clickedAnswerId = null
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
    padding: 3.2em var(--root-layout-offset) 6.4em;
    display: grid;
    background-color: var(--root-color-base-0);
    grid-template-columns: 22.4em 1fr 22.4em;
    @include down(xxl) {
      grid-template-columns: 1fr;
    }
  }

  .img {
    position: relative;
    padding-bottom: 57.6%;
    width: 100%;
    border: 1px solid var(--root-color-base-200);
    border-radius: 1.2em;
    margin-bottom: 3.2em;
    img {
      width: 100%;
      height: 100%;
      left: 0;
      top: 0;
      position: absolute;
      object-fit: contain;
      object-position: center;
    }
  }

  .title {
    margin-bottom: 2.4em;
    font-family: var(--root-font-family-header);
    font-weight: 500;
    .t {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }

  .answers {

  }

  .item {
    padding: 1.6em;
    background: var(--root-color-base-100);
    border-radius: .8em;
    display: flex;
    align-items: center;
    width: 100%;
    transition: .3s;
    &.green {
      background-color: #27AE60;
      .t {
        color: var(--root-color-base-0);
      }
      .mark {
        background-color: var(--root-color-base-0);
        svg {
          opacity: 1;
        }
      }
    }
    &.red {
      background-color: red;
      .t {
        color: var(--root-color-base-0);
      }
      .mark {
        background-color: var(--root-color-base-0);
        svg {
          opacity: 1;
        }
      }
    }
    & + & {
      margin-top: 1.6em;
    }
    .mark {
      width: 1.6em;
      height: 1.6em;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 1px solid var(--root-color-base-300);
      border-radius: 50%;
      margin-right: 0.8em;
      flex-shrink: 0;
      svg {
        width: 1.2em;
        display: block;
        height: auto;
        opacity: 0;
        transition: .3s opacity;
      }
    }
    .t {
      font-size: 1.6em;
      line-height: 1.12;
      color: var(--root-color-base-800);
    }
  }

  .test {
    grid-column: 2 / 3;
    @include down(xxl) {
      grid-column: 1 / 2;
    }
  }

  .controller {
    padding: 1.6em var(--root-layout-offset);
    display: grid;
    grid-template-columns: 22.4em 1fr 22.4em;
    align-items: flex-start;
    position: sticky;
    bottom: var(--root-footer-height);
    background-color: var(--root-color-base-0);
    border-top: 1px solid var(--root-color-base-200);
    @include down(xxl) {
      grid-template-columns: 1fr;
    }
  }

  .controllerContent {
    display: flex;
    align-items: center;
    grid-column: 2 / 3;
    @include down(xxl) {
      grid-column: 1 / 2;
    }
    .t {
      font-family: var(--root-font-family-header);
      font-weight: 500;
      font-size: 1.6em;
      line-height: 1.12;
    }
  }

  .progress {
    margin: 0 2.4em;
    position: relative;
    border-radius: 0.8em;
    overflow: hidden;
    height: 1em;
    width: calc(100% - 4.8em);
    background-color: var(--root-color-base-200);
    .line {
      position: absolute;
      left: 0;
      top: 0;
      height: 100%;
      display: block;
      background-color: var(--root-color-blue-500);
      transition: width .3s ease-in-out;
    }
  }

  .res {
    margin-top: 1.6em;
    padding-top: 1.6em;
    display: block;
    width: 100%;
    border-top: 1px solid var(--root-color-base-200);
    .t {
      font-size: 1.6em;
      line-height: 1.5;
      color: var(--root-color-base-700);
    }
  }
</style>
