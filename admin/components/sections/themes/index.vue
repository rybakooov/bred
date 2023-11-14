<template>
  <v-container>
    <h1 class="text-h3 font-weight-medium">
      Темы
    </h1>
    <v-row align="stretch" class="mt-4">
      <v-col v-for="subject in subjects" :key="subject.id" cols="4">
        <v-card :to="`/themes/${subject.id}`" height="100%" class="pa-4">
          <v-card-title>{{ subject.name }}</v-card-title>
          <v-btn @click.stop.prevent="dialogItem = subject; dialog = true" small absolute top right fab class="red--text">
            <v-icon>mdi-delete</v-icon>
          </v-btn>
          <v-card-actions class="d-flex">
            <v-spacer />
            <div :class="[$style.indicator, subject.is_visible ? 'success' : 'error']"></div>
          </v-card-actions>
        </v-card>
      </v-col>
      <v-col cols="4">
        <v-btn width="100%" height="100%" min-height="60px" @click="addTheme">Добавить тему</v-btn>
      </v-col>
    </v-row>

    <v-dialog max-width="330" v-model="dialog">
      <v-card v-if="dialogItem">
        <v-card-title class="text-h5">Вы уверены, что хотите удалить тему {{ dialogItem.name }}?</v-card-title>
        <v-card-actions>
          <v-btn
            color="success"
            text
            @click="deleteTheme(dialogItem.id)"
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
  </v-container>
</template>

<script>
  import { mapActions, mapState } from 'vuex'

  export default {
    name: 'SectionThemes',
    data() {
      return {
        dialog: false,
        dialogItem: null
      }
    },
    computed: {
      ...mapState('subjects', ['subjects'])
    },
    methods: {
      ...mapActions('subjects', ['get', 'post', 'delete']),
      async addTheme() {
        try {
          await this.post({
            name: 'Новая тема ' + Math.ceil(Math.random() * 1000000),
            is_visible: false
          })
          await this.get()
        } catch (e) {}
      },
      async deleteTheme(id) {
        try {
          await this.delete(id)
          await this.get()
        } catch (e) {} finally {
          this.closeDialog()
        }
      },
      closeDialog() {
        this.dialog = false
        setTimeout(() => {
          this.dialogItem = null
        }, 300)
      }
    },
    mounted() {
      this.get()
    }
  }
</script>

<style module lang="scss">
  .indicator {
    display: block;
    width: 8px;
    height: 8px;
    border-radius: 50%;
    margin-left: 4px;
  }
</style>
