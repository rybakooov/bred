<template>
  <section-test @show-results="showResults" v-if="!results.length" />
  <section-test-results :results="results" v-else :test="test" :success="success" />
</template>

<script>
  import pageMixin from '../../../../mixins/page'
  import SectionTest from '~/components/sections/test'
  import { mapActions, mapState } from 'vuex'
  import SectionTestResults from '~/components/sections/test/results'

  export default {
    components: {
      SectionTestResults,
      SectionTest
    },
    layout: 'default',
    name: 'TestPage',
    mixins: [
      pageMixin()
    ],
    data() {
      return {
        results: [],
        res: {},
        success: false
      }
    },
    computed: {
      ...mapState('lessons', ['lesson', 'test']),
      title() {
        return `Тест | ${this.lesson?.name}`
      }
    },
    methods: {
      ...mapActions('lessons', ['getItem', 'getTest', 'checkTest']),
      async showResults(results) {
        let res = null
        try {
          res = await this.checkTest({
            subjectId: this.$route.params.theme,
            lessonId: this.$route.params.lesson,
            results
          }).catch(() => {})
          this.success = res.success
          this.results = results
        } catch (e) {
          if (res.success) {
            this.success = res.success
            this.results = results
          } else {
            await this.$router.push('/profile')
          }
        }
      }
    },
    async mounted() {
      await this.getItem({ subjectId: this.$route.params.theme, lessonId: this.$route.params.lesson })
      await this.getTest({ subjectId: this.$route.params.theme, lessonId: this.$route.params.lesson })
    }
  }
</script>

<style module lang="scss">

</style>
