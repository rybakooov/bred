<template>
  <v-container v-if="subject">
    <h1 class="text-h3 font-weight-medium">
      Тема "<span contenteditable @blur="onChange({ name: name })" @input="name = $event.target.innerText">{{ subject.name }}</span>"
    </h1>
    <v-tabs centered v-model="tab" class="mt-4">
      <v-tab
        v-for="item in items"
        :key="item.name"
      >
        {{ item.name }}
      </v-tab>
    </v-tabs>
    <v-tabs-items class="mt-4" v-model="tab">
      <v-tab-item
        v-for="item in items"
        :key="item.name"
      >
        <component :is="item.component" />
      </v-tab-item>
    </v-tabs-items>
  </v-container>
</template>

<script>
  import { mapActions, mapState } from 'vuex'
  import ThemeLessons from '~/components/sections/theme/lessons'
  import ThemeMain from '~/components/sections/theme/main'
  import ThemeQuestions from '~/components/sections/theme/questions'

  export default {
    name: 'SectionTheme',
    data() {
      return {
        name: '',
        tab: null,
        items: [
          {
            name: 'Тема',
            component: ThemeMain,
            key: 'theme'
          }, {
            name: 'Тест',
            component: ThemeQuestions,
            key: 'test'
          }, {
            name: 'Уроки',
            component: ThemeLessons,
            key: 'lessons'
          }
        ]
      }
    },
    computed: {
      ...mapState('subjects', ['subject', 'test']),
      themeId() {
        return this.$route.params.themes
      }
    },
    methods: {
      ...mapActions('notifications', ['addNotify']),
      ...mapActions('subjects', ['getItem', 'update', 'getTest']),
      ...mapActions('lessons', {
        getLessons: 'get'
      }),
      async onChange(data) {
        try {
          await this.update({ id: this.themeId, subjectData: data })
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
      }
    },
    async mounted() {
      await this.getItem(this.themeId)
      await this.getLessons(this.themeId)
      await this.getTest(this.themeId)
    }
  }
</script>

<style module lang="scss">

</style>
