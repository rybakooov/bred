<template>
  <project-section-container-m title="Вопросы">
    <div class="my-4">
      <v-expansion-panels accordion>
        <v-expansion-panel v-for="(question, questionIndex) in questions" :key="questionIndex + '_question'">
          <v-expansion-panel-header>
            <span class="font-weight-medium">Вопрос №{{ questionIndex + 1 }}</span>
            <v-spacer />
            <v-btn @click.prevent.stop="removeQuestion(questionIndex)" x-small fab class="mr-2 error--text flex-grow-0">
              <v-icon>mdi-delete</v-icon>
            </v-btn>
            <template v-slot:actions>
              <v-btn x-small fab>
                <v-icon>mdi-chevron-down</v-icon>
              </v-btn>
            </template>
          </v-expansion-panel-header>
          <v-expansion-panel-content>
            <v-divider />
            <v-row>
              <project-section-container-s title="Текст вопроса">
                <v-text-field
                  label="Вопрос"
                  outlined
                  :rules="[rules.required]"
                  v-model="question.question_text"
                />
              </project-section-container-s>
            </v-row>

            <v-row>
              <project-section-container-s title="Картинка вопроса">
                <project-section-container-file-input
                  label="Картинка вопроса"
                  :unique="'theme_' + themeId + '_question_' + questionIndex"
                  :value="question.image || ''"
                  @input="onUpload($event, questionIndex)"
                />
              </project-section-container-s>
            </v-row>

            <v-row>
              <project-section-container-s title="Варианты ответа" subtitle="Не забудь отметить правильные ответы">
                <div :class="$style.grid">
                  <v-card elevation="10" class="pa-2" v-for="(answer, answerIndex) in question.answers" :key="answerIndex + 1 + '_answer'">
                    <v-btn @click="removeAnswer(questionIndex, answerIndex)" class="error--text" fab absolute small top right>
                      <v-icon>mdi-delete</v-icon>
                    </v-btn>
                    <v-card-title>Ответ {{ answerIndex + 1 }}</v-card-title>
                    <v-col>
                      <v-row>
                        <v-checkbox
                          name="question-1"
                          v-model="answer.is_correct"
                          color="success"
                        />
                        <v-text-field
                          label="Вариант ответа"
                          outlined
                          :rules="[rules.required]"
                          v-model="answer.answer_text"
                        />
                      </v-row>
                      <v-row>
                        <v-text-field
                          label="Результат"
                          outlined
                          :rules="[rules.required]"
                          v-model="answer.explanation"
                        />
                      </v-row>
                    </v-col>
                  </v-card>
                </div>
                <v-btn block class="mt-4" @click="addAnswer(questionIndex)">
                  Добавить вариант ответа
                </v-btn>
              </project-section-container-s>
            </v-row>
          </v-expansion-panel-content>
        </v-expansion-panel>
      </v-expansion-panels>
    </div>
    <v-btn block @click="addQuestion" class="primary darken-2">
      Добавить вопрос
    </v-btn>
    <v-btn block @click="saveTest" class="mt-4 success darken-3">
      Сохранить тест
    </v-btn>
  </project-section-container-m>
</template>

<script>

import ProjectSectionContainerS from '~/components/containers/container-s'
import ProjectSectionContainerM from '~/components/containers/container-m'
import ProjectSectionContainerFileInput from '~/components/containers/file-input'

export default {
  name: 'Questions',
  components: {
    ProjectSectionContainerFileInput,
    ProjectSectionContainerM,
    ProjectSectionContainerS
  },
  props: {
    value: {
      type: Array,
      default: null
    }
  },
  data() {
    return {
      questions: null,
      rules: {
        required: value => !!value || 'Обязятельно для заполнения'
      }
    }
  },
  computed: {
    themeId() {
      return this.$route.params.themes
    }
  },
  methods: {
    async onUpload (e, index) {
      this.questions[index].image = e
      await this.saveTest()
    },
    addQuestion() {
      if (!this.questions) {
        this.questions = []
      }
      this.questions.push({
        question_text: '',
        // image: null,
        answers: [
        {
          answer_text: '',
          explanation: '',
          is_correct: false
        }
      ]
      })
    },
    removeQuestion(index) {
      this.questions.splice(index, 1)
    },
    addAnswer(questionIndex) {
      this.questions[questionIndex].answers.push({
        answer_text: '',
        explanation: '',
        is_correct: false
      })
    },
    removeAnswer(questionIndex, answerIndex) {
      this.questions[questionIndex].answers.splice(answerIndex, 1)
      if (!this.questions.length) {
        this.questions = null
      }
    },
    saveTest() {
      const res = this.questions.map((el) => {
        const obj = {
          ...el
        }
        if (el.image?.uuid || el.image) {
          obj.image = el.image?.uuid || el.image
        }
        return obj
      })
      this.$emit('save', res)
    },
    setup() {
      if (this.value) {
        this.questions = this.value
      }
    }
  },
  mounted() {
    this.$nextTick(() => {
      this.setup()
    })
  }
}
</script>

<style module lang="scss">
.grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 1em;
  &Row {
    grid-column: 1 / -1;
  }
}

.preview {
  width: 3.6em;
  height: 3.6em;
  margin: 0 auto;
  object-fit: cover;
}
</style>
