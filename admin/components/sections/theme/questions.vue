<template>
  <questions :value="questions" @save="saveTest" />
</template>

<script>
  import { mapActions, mapState } from 'vuex'
  import Questions from '~/components/containers/questions'

  export default {
    name: 'ThemeQuestions',
    components: {
      Questions
    },
    data() {
      return {
        questions: null
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
      async saveTest(data) {
        const newArr = JSON.parse(JSON.stringify(data))
        for (const i in newArr) {
          if (!newArr[i].image) {
            this.$delete(newArr[i], 'image')
          }
        }
        try {
          await this.$axios.$post(`/admin/subjects/${this.themeId}/test/`, {
            questions: newArr
          })
          this.addNotify({
            type: 'success',
            text: 'Тест сохранен'
          })
        } catch (e) {
          this.addNotify({
            type: 'error',
            text: e.message
          })
        } finally {}
      }
    },
    mounted() {
      if (this.test) {
        this.questions = JSON.parse(JSON.stringify(this.test.questions))
      } else {
        this.questions = null
      }
    },
    watch: {
      test(val) {
        if (val) {
          this.questions = JSON.parse(JSON.stringify(this.test.questions))
        } else {
          this.questions = null
        }
      }
    }
  }
</script>

<style module lang="scss">

</style>
