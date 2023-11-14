<template>
  <project-section-container-m title="Тема">
    <v-checkbox
      label="Опубликовать"
      class="mt-4"
      :input-value="subject.is_visible"
      value
      @change="onChange({ is_visible: $event })"
      :disabled="!subject.test"
    />
    <v-textarea
      class="mt-4"
      label="Описание темы"
      auto-grow
      :value="subject.summary"
      @blur="onChange({ summary: summary })"
      @input="summary = $event"
    />
    <project-section-container-file-input
      :unique="'theme_' + subject.id"
      :value="subject.image || ''"
      @input="onChange({ image: $event })"
      label="Картинка темы"
    />
  </project-section-container-m>
</template>

<script>
  import { mapActions, mapState } from 'vuex'
  import ProjectSectionContainerM from '~/components/containers/container-m'
  import ProjectSectionContainerFileInput from '~/components/containers/file-input'

  export default {
    name: 'ThemeMain',
    components: {
      ProjectSectionContainerFileInput,
      ProjectSectionContainerM
    },
    data() {
      return {
        summary: ''
      }
    },
    computed: {
      ...mapState('subjects', ['subject']),
      ...mapState('lessons', ['lessons']),
      themeId() {
        return this.$route.params.themes
      }
    },
    methods: {
      ...mapActions('notifications', ['addNotify']),
      ...mapActions('subjects', ['update', 'getItem']),
      async onChange(data) {
        try {
          await this.update({ id: this.themeId, subjectData: data })
          this.addNotify({
            type: 'success',
            text: 'Сохранено'
          })
          await this.getItem(this.themeId)
        } catch (e) {
          this.addNotify({
            type: 'error',
            text: e.message
          })
        }
      }
    }
  }
</script>

<style module lang="scss">

</style>
