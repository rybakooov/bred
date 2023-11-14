<template>
  <div class="d-flex align-start">
    <v-file-input
      :label="label"
      filled
      :prepend-icon="document ? 'mdi-file-document-multiple' : video ? 'mdi-video' : 'mdi-camera'"
      @change="onUpload($event)"
      :loading="loading"
    />
    <template
      v-if="getPreview && !document && !video"
    >
      <img
        :src="getPreview"
        :class="`${$style.preview} ml-4`"
        @click="dialog = true"
      />
      <v-btn fab class="ml-4 error--text" @click="removeFile(value.uuid)">
        <v-icon>mdi-delete</v-icon>
      </v-btn>
      <br />
    </template>
    <div v-else-if="value.file" class="d-flex align-c">
      <p>FilePath: {{ value.file }}</p>
      <v-btn fab class="ml-4 error--text" @click="removeFile(value.uuid)">
        <v-icon>mdi-delete</v-icon>
      </v-btn>
    </div>
    <v-dialog
      v-model="dialog"
      max-width="440"
    >
      <v-card>
        <v-img
          v-if="getPreview"
          :src="getPreview"
        />
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
  import { mapActions } from 'vuex'

  export default {
    name: 'ProjectSectionContainerFileInput',
    props: {
      value: {
        type: [String, Object],
        required: true
      },
      unique: {
        type: String,
        required: true
      },
      label: {
        type: String,
        required: true
      },
      returnFilePath: {
        type: Boolean,
        default: false
      },
      document: {
        type: Boolean,
        default: false
      },
      video: {
        type: Boolean,
        default: false
      }
    },
    data() {
      return {
        dialog: false,
        loading: false,
        file: null
      }
    },
    computed: {
      getPreview () {
        if (this.file || this.value.file || (typeof this.value === 'string' && this.value !== '')) {
          return process.env.NODE_ENV === 'development' ? `http://localhost:8000${this.file || this.value.file || this.value}` : `https://api.trade-study.ru${this.file || this.value.file || this.value}`
        } else {
          return ''
        }
      }
    },
    methods: {
      ...mapActions('notifications', ['addNotify']),
      ...mapActions('files', ['uploadImage', 'uploadVideo', 'uploadDocument', 'deleteVideo', 'deleteDocument', 'deleteImage']),
      async upload(file, key) {
        if (this.video) {
          return await this.uploadVideo({ file, key })
        } else if (this.document) {
          return await this.uploadDocument({ file, key })
        } else {
          return await this.uploadImage({ file, key })
        }
      },
      async deleteFile(uuid) {
        if (this.video) {
          return await this.deleteVideo(uuid)
        } else if (this.document) {
          return await this.deleteDocument(uuid)
        } else {
          return await this.deleteImage(uuid)
        }
      },
      async onUpload (file) {
        this.loading = true
        if (file === null) {
          this.loading = false
          return
        }
        let result
        try {
          result = await this.upload(file, this.unique + '.' + file.name.split('.').pop())
          this.$emit('input', this.returnFilePath ? result.image : result.uuid)
          this.addNotify({
            type: 'success',
            text: 'Файл успешно загружен'
          })
          this.file = result.image
        } catch (e) {
          // console.log(e)
          this.addNotify({
            type: 'error',
            text: 'Не удалось загрузить файл'
          })
        } finally {
          this.loading = false
        }
      },
      async removeFile(uuid) {
        this.loading = true
        let result
        try {
          result = await this.deleteFile(uuid)
          this.$emit('input', null)
          this.addNotify({
            type: 'success',
            text: 'Файл успешно удален'
          })
          this.file = null
        } catch (e) {
          // console.log(e)
          this.addNotify({
            type: 'error',
            text: 'Упс. Что-то пошло не так :('
          })
        } finally {
          this.loading = false
        }
      }
    }
  }
</script>

<style module lang="scss">
  .preview {
    width: 3.6em;
    height: 3.6em;
    margin: 0 auto;
    object-fit: cover;
    cursor: pointer;
  }
</style>
