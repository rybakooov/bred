<template>
  <project-section-container-m title="Список уроков">
    <v-row align="stretch" class="mt-4">
      <v-col v-for="lesson in lessons" :key="lesson.id" cols="4">
        <v-card :to="`/themes/${themeId}/${lesson.id}`" height="100%" class="pa-4">
          <v-card-title :class="$style.title">{{ lesson.name }}</v-card-title>
          <v-btn @click.stop.prevent="dialogItem = lesson; dialog = true" small absolute top right fab class="red--text">
            <v-icon>mdi-delete</v-icon>
          </v-btn>
          <v-card-actions class="d-flex">
            <v-spacer />
            <div :class="[$style.indicator, lesson.is_visible ? 'success' : 'error']"></div>
          </v-card-actions>
        </v-card>
      </v-col>
      <v-col cols="4">
        <v-btn width="100%" height="100%" min-height="60px" @click="addLesson">Добавить урок</v-btn>
      </v-col>
    </v-row>

    <v-dialog max-width="330" v-model="dialog">
      <v-card v-if="dialogItem">
        <v-card-title class="text-h5">Вы уверены, что хотите удалить урок {{ dialogItem.name }}?</v-card-title>
        <v-card-actions>
          <v-btn
            color="success"
            text
            @click="rmLesson(dialogItem.id)"
          >
            Удалить
          </v-btn>
          <v-btn
            color="error"
            text
            @click="closeDialog"
          >
            Отменить
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </project-section-container-m>
</template>

<script>
  import { mapActions, mapState } from 'vuex'
  import ProjectSectionContainerM from '~/components/containers/container-m'

  export default {
    name: 'ThemeLessons',
    components: {
      ProjectSectionContainerM
    },
    data() {
      return {
        dialog: false,
        dialogItem: null
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
      ...mapActions('lessons', {
        getLessons: 'get',
        postLesson: 'post',
        deleteLesson: 'delete'
      }),
      async addLesson() {
        try {
          await this.postLesson({
            id: this.themeId,
            lessonData: {
              name: 'Новый урок ' + Math.ceil(Math.random() * 10000),
              is_visible: false
            }
          })
          await this.getLessons(this.themeId)
          this.addNotify({
            type: 'success',
            text: 'Новый урок добавлен'
          })
        } catch (e) {
          this.addNotify({
            type: 'error',
            text: e.message
          })
        }
      },
      async rmLesson(id) {
        try {
          await this.deleteLesson({ themeId: this.themeId, lessonId: id })
          await this.getLessons(this.themeId)
          this.addNotify({
            type: 'success',
            text: 'Тема удалена'
          })
        } catch (e) {
          this.addNotify({
            type: 'error',
            text: e.message
          })
        } finally {
          this.closeDialog()
        }
      },
      closeDialog() {
        this.dialog = false
        setTimeout(() => {
          this.dialogItem = null
        }, 300)
      }
    }
  }
</script>

<style module lang="scss">
  .title {
    word-break: keep-all !important;
  }
  .indicator {
    display: block;
    width: 8px;
    height: 8px;
    border-radius: 50%;
    margin-left: 4px;
  }
</style>
