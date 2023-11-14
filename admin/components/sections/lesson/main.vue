<template>
  <project-section-container-m>
    <v-checkbox
      label="Опубликовать"
      class="mt-4"
      :input-value="lesson.is_visible"
      value
      @change="onChange({ is_visible: $event });"
      :disabled="!lesson.test"
    />
    <project-section-container-file-input
      :unique="'theme_' + themeId + '_lesson_' + lessonId + '_doc'"
      :value="lesson.document || ''"
      @input="onChange({ document: $event })"
      label="Документ"
      document
    />
    <v-row>
      <v-col cols="10">
        <v-text-field
          label="Ссылка на видео"
          outlined
          :value="video"
          @change="onChangeVideo"
        />
      </v-col>
      <v-col cols="2" v-if="lesson.video.file || lesson.video.url">
        <v-btn fab class="error--text" @click="deleteVideoForce">
          <v-icon>mdi-delete</v-icon>
        </v-btn>
      </v-col>
    </v-row>

    <project-section-container-s title="Контент">
      <div
        v-for="(obj, index) in outline"
        :key="index + '_content'"
        class="mb-6"
      >
        <v-textarea
          label="Абзац"
          outlined
          v-model="outline[index].text"
          append-outer-icon="mdi-close"
          @click:append-outer="removeParagraph(index)"
          hide-details
          @change="onChange({ outline: JSON.stringify(outline) })"
        />
        <project-section-container-file-input
          class="mt-4"
          :unique="'theme_' + themeId + '_lesson_' + lessonId + '_outline_' + index"
          :value="outline[index].image || ''"
          @input="outline[index].image = $event; onChange({ outline: JSON.stringify(outline) })"
          label="Картинка в параграфе"
          return-file-path
        />
      </div>
      <v-btn
        @click="addParagraph"
        block
      >
        Добавить абзац
      </v-btn>
    </project-section-container-s>
  </project-section-container-m>
</template>

<script>
import { mapActions, mapState } from 'vuex'
  import ProjectSectionContainerM from '~/components/containers/container-m'
import ProjectSectionContainerS from '~/components/containers/container-s'
import ProjectSectionContainerFileInput from '~/components/containers/file-input'

  export default {
    name: 'SectionLessonMain',
    data() {
      return {
        outline: [],
        video: ''
      }
    },
    components: {
      ProjectSectionContainerFileInput,
      ProjectSectionContainerS,
      ProjectSectionContainerM
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
      ...mapActions('files', ['uploadVideo', 'deleteVideo']),
      ...mapActions('lessons', ['update', 'getItem']),
      ...mapActions('notifications', ['addNotify']),
      async onChange(data) {
        try {
          await this.update({
            themeId: this.themeId,
            lessonId: this.lessonId,
            lessonData: data
          })
          await this.getItem({ subjectId: this.themeId, lessonId: this.lessonId })
          this.addNotify({
            type: 'success',
            text: 'Сохранено'
          })
        } catch (e) {
          this.addNotify({
            type: 'error',
            text: e.message
          })
        }
      },
      async addParagraph() {
        if (!this.outline.length) {
          this.outline = []
        }
        this.outline.push({
          text: '',
          image: ''
        })
        await this.onChange({ outline: JSON.stringify(this.outline) })
      },
      async removeParagraph(index) {
        this.outline.splice(index, 1)
        if (!this.outline.length) {
          this.outline = []
        }
        await this.onChange({ outline: JSON.stringify(this.outline) })
      },
      async onChangeVideo($event) {
        if (!$event) {
          this.video = $event
          return
        }
        try {
          const res = await this.uploadVideo({
            file: $event,
            key: 'theme_' + this.themeId + '_lesson_' + this.lessonId + '_video'
          })
          await this.onChange({ video: res })
          this.video = $event
        } catch (e) {
          this.addNotify({
            type: 'error',
            message: e.message
          })
        }
      },
      async deleteVideoForce() {
        try {
          await this.deleteVideo(this.lesson.video.uuid)
          this.addNotify({
            type: 'success',
            message: 'Видео удалено'
          })
        } catch (e) {
          this.addNotify({
            type: 'error',
            message: e.message
          })
          this.video = ''
        } finally {
          await this.getItem({ subjectId: this.themeId, lessonId: this.lessonId })
        }
      }
    },
    async mounted() {
      await this.getItem({ subjectId: this.themeId, lessonId: this.lessonId })
      if (this.lesson.outline) {
        this.outline = JSON.parse(this.lesson.outline)
      }
      if (this.lesson.video.file || this.lesson.video.url) {
        this.video = this.lesson.video.file || this.lesson.video.url
      }
    },
    watch: {
      lesson(val) {
        if (val.outline) {
          this.outline = JSON.parse(val.outline)
        } else {
          this.outline = []
        }
        if (val.video.file || val.video.url) {
          this.video = val.video.file || val.video.url
        } else {
          this.video = ''
        }
      }
    }
  }
</script>

<style module lang="scss">

</style>
