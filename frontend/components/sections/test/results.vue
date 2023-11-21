<template>
  <div :class="$style.container" v-if="test && results.length">
    <header :class="$style.header">
      <ui-button @click="$router.go(-1)" :class="$style.backBtn">
        <span :class="$style.back">
          <icon-arrow-right-s-line :class="$style.backIcon" />
          <span :class="$style.backText">Назад</span>
        </span>
      </ui-button>
      <div :class="$style.result">
        <div :class="$style.resultInfo">
          <p :class="$style.title">Резульатат теста</p>
          <p :class="$style.numbers">{{ getCorrectAnswersLength }}/{{ results.length }}</p>
        </div>
        <div :class="$style.about">
          <div :class="$style.head">
            <span :class="$style.subtitle">
              <span>Тема</span>
            </span>
            <span :class="$style.name" v-if="subject">
              <span>{{ subject.name }}</span>
            </span>
          </div>
          <p :class="$style.resultTitle">
            <span :class="$style.t">{{ !success ? 'Вы не сдали тест' : 'Вы сдали тест' }}</span>
          </p>
          <ui-button theme="red" size="md" :class="$style.btn" @click="onClick">
            {{ !success ? 'Пройти еще раз' : (!next ? 'На главную' : 'Продолжить') }}
          </ui-button>
        </div>
      </div>
    </header>

    <div :class="$style.content">
      <div :class="$style.cont">
        <div :class="$style.question" v-for="question in results" :key="question.question_id">
          <p :class="$style.questionText">
            <span :class="$style.t">{{ getQuestionById(question.question_id).question_text }}</span>
          </p>
          <div :class="$style.answers">
            <div :class="$style.answer">
              <span :class="[$style.mark, getMyAnswer(question.question_id, question.answer_id).is_correct ? $style.markGreen : $style.markRed]">
                <svg v-if="getMyAnswer(question.question_id, question.answer_id).is_correct" width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M4.99999 7.586L9.59599 2.9895L10.3035 3.6965L4.99999 9L1.81799 5.818L2.52499 5.111L4.99999 7.586Z" fill="currentColor"/>
                </svg>
                <svg v-else width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M5.99987 5.29299L8.47487 2.81799L9.18187 3.52499L6.70687 5.99999L9.18187 8.47499L8.47487 9.18199L5.99987 6.70699L3.52487 9.18199L2.81787 8.47499L5.29287 5.99999L2.81787 3.52499L3.52487 2.81799L5.99987 5.29299Z" fill="currentColor"/>
                </svg>
              </span>
              <span :class="$style.t">
                Ваш ответ: {{ getMyAnswer(question.question_id, question.answer_id).answer_text }}
              </span>
            </div>
            <div :class="$style.answer" v-if="!getMyAnswer(question.question_id, question.answer_id).is_correct">
              <span :class="$style.mark">
                <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M4.99999 7.586L9.59599 2.9895L10.3035 3.6965L4.99999 9L1.81799 5.818L2.52499 5.111L4.99999 7.586Z" fill="currentColor"/>
                </svg>
              </span>
              <span :class="$style.t">
                Правильный ответ: {{ getCorrectAnswer(question.question_id, question.answer_id).answer_text }}
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions, mapState } from 'vuex'
  import IconArrowRightSLine from '~/components/icons/arrow-right-s-line'
  import UiButton from '~/components/ui/button'

  export default {
    name: 'SectionTestResults',
    components: {
      UiButton,
      IconArrowRightSLine
    },
    props: {
      success: {
        type: Boolean,
        default: false
      },
      results: {
        type: Array,
        required: true
      },
      test: {
        type: Object,
        default: null
      }
    },
    data() {
      return {
        toProfile: false,
        next: false
      }
    },
    computed: {
      ...mapState('subjects', ['subject']),
      ...mapState('lessons', ['lesson']),
      lessonId() {
        return this.$route.params.lesson
      },
      themeId() {
        return this.$route.params.theme
      },
      getCorrectAnswersLength () {
        let i = 0
        for (const q in this.results) {
          if (this.getMyAnswer(this.results[q].question_id, this.results[q].answer_id).is_correct) {
            i++
          }
        }
        return i
      }
    },
    methods: {
      ...mapActions('subjects', ['getItem']),
      getQuestionById(qId) {
        return this.test.questions.find(el => el.id === qId)
      },
      getMyAnswer(qId, aId) {
        return this.getQuestionById(qId).answers.find(el => el.id === aId)
      },
      getCorrectAnswer(qId) {
        return this.getQuestionById(qId).answers.find(el => el.is_correct === true)
      },
      async onClick() {
        if (!this.success) {
          await this.$router.go('/profile')
        }
        if (this.lessonId) { // если урок, чекаем есть ли следующий. Если нет шлем на итоговый
          try {
            const next = await this.$axios.$get(`/subjects/${this.lesson.subject.id}/lessons/${this.lesson.id}/next/`)
            if (next.subject.id === this.lesson.subject.id) {
              try {
                await this.$router.push(`/themes/${next.subject.id}/${next.id}/lesson`)
              } catch (e) {
                await this.$router.push(`/profile`)
              }
            } else {
              await this.$router.push(`/themes/${this.themeId}/test`)
            }
          } catch (e) {
            try {
              await this.$router.push(`/themes/${this.themeId}/test`)
            } catch (e) {
              await this.$router.push(`/profile`)
            }
          }
        } else {
          await this.$router.push('/profile')
        }
      }
    },
    async mounted() {
      await this.getItem(this.themeId)
      if (this.lessonId) {
        try {
          const next = await this.$axios.$get(`/subjects/${this.lesson.subject.id}/lessons/${this.lesson.id}/next/`)
          this.next = true
        } catch (e) {
          this.next = false
        }
      } else {
        this.next = false
        this.toProfile = true
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
    padding: 0 var(--root-layout-offset) 3.2em;
    display: grid;
    background-color: var(--root-color-base-0);
    grid-template-columns: 22.4em 1fr 22.4em;
    @include down(xxl) {
      grid-template-columns: 1fr;
    }
  }
  .header {
    padding: 6.4em var(--root-layout-offset) 3.2em;
    display: grid;
    grid-template-columns: 22.4em 1fr 22.4em;
    align-items: flex-start;
    @include down(xl) {
      grid-template-columns: 10em 1fr 10em;
    }
    @include down(lg) {
      padding: 4em var(--root-layout-offset) 2.4em;
      grid-template-columns: 1fr;
    }
    @include down(md) {
      padding: 2.4em var(--root-layout-offset) 2.4em;
      grid-template-columns: 4.4em 1fr 4.4em;
    }
  }

  .back {
    color: var(--root-color-base-700);
    display: flex;
    align-items: center;
    @include down(md) {
      justify-content: center;
      width: 2.4em;
      height: 2.4em;
      border-radius: 50%;
      background-color: #fff;
    }
    &Btn {
      justify-content: flex-start;
    }
    &Icon {
      transform-origin: center;
      transform: rotate(180deg);
      margin-right: 0.4em;
      width: 1.6em;
      height: auto;
      display: block;
      @include down(md) {
        margin-right: 0;
      }
    }
    &Text {
      font-size: 1.4em;
      line-height: 1.14;
      @include down(md) {
        display: none;
      }
    }
  }

  .question {
    padding: 3.2em 0;
    &:not(:first-child) {
      border-top: 1px solid var(--root-color-base-200);
    }
    &Text {
      margin-bottom: 1.6em;
      font-family: var(--root-font-family-header);
      font-weight: 500;
      .t {
        font-size: 1.6em;
        line-height: 1.12;
      }
    }
  }

  .answers {

  }

  .answer {
    padding: 1.6em;
    background-color: var(--root-color-base-200);
    border-radius: .8em;
    display: flex;
    align-items: center;
    & + & {
      margin-top: 1.6em;
    }
    .t {
      color: var(--root-color-base-700);
      font-size: 1.6em;
      line-height: 1.12;
    }
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
    color: var(--root-color-base-300);
    &Green {
      background-color: #27AE60;
      border-color: #27AE60;
      color: var(--root-color-base-0);
    }
    &Red {
      background-color: #EB5757;
      border-color: #EB5757;
      color: var(--root-color-base-0);
    }
    svg {
      width: 1.2em;
      display: block;
      height: auto;
      opacity: 1;
      transition: .3s opacity;
    }
  }
  .result {
    display: flex;
    @include down(md) {
      flex-direction: column;
      align-items: center;
    }
  }
  .resultInfo {
    flex-shrink: 0;
    padding: 0 3.2em;
    height: 16.8em;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    border: 1px solid var(--root-color-base-300);
    border-radius: 1.2em;
    margin-right: 3.6em;
    @include down(md) {
      height: 12.8em;
      padding: 0 2.4em;
      margin-right: 0;
      margin-bottom: 2.4em;
    }
  }

  .about {
    display: flex;
    flex-direction: column;
  }

  .btn {
    margin-top: auto;
    @include down(md) {
      margin-top: 1.6em;
      width: 100%;
    }
  }

  .subtitle span, .name span {
    font-size: 1.4em;
    line-height: 1.14;
  }

  .subtitle {
    color: var(--root-color-base-700);
    margin-right: 0.8em;
  }

  .name {
    color: var(--root-color-blue-500);
  }

  .title {
    font-size: 1.6em;
    line-height: 1.12;
    color: var(--root-color-base-700);
  }

  .numbers {
    font-family: var(--root-font-family-header);
    font-weight: bold;
    font-size: 7.2em;
  }
  .cont {
    grid-column: 2 / 3;
    @include down(xxl) {
      grid-column: 1 / 2;
    }
  }

  .resultTitle {
    font-family: var(--root-font-family-header);
    font-weight: 500;
    margin-top: 1.6em;
    @include down(md) {
      text-align: center;
    }
    .t {
      font-size: 3.6em;
      line-height: 1.06;
      @include down(md) {
        font-size: 2em;
        line-height: 1.1;
      }
    }
  }

  .head {
    @include down(md) {
      text-align: center;
    }
  }
</style>
