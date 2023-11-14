<template>
  <section-test @show-results="showResults" v-if="!results.length" />
  <section-test-results :results="results" v-else :test="test" :success="success" />
</template>

<script>
  import SectionTest from '~/components/sections/test'
  import { mapActions, mapState } from 'vuex'
  import pageMixin from '~/mixins/page'
  import SectionTestResults from '~/components/sections/test/results'

  export default {
    name: 'ThemeTestPage',
    components: {
      SectionTestResults,
      SectionTest
    },
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
      ...mapState('subjects', ['subject', 'test']),
      title() {
        return `Итоговый тест | ${this.subject?.name}`
      }
    },
    methods: {
      ...mapActions('subjects', ['getItem', 'getTest', 'checkTest']),
      async showResults(results) {
        let res = null
        try {
          res = await this.checkTest({
            subjectId: this.$route.params.theme,
            results
          })
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
      await this.getItem(this.$route.params.theme)
      await this.getTest(this.$route.params.theme)
    }
  }
</script>

<style module lang="scss">

</style>
