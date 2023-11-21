<template>
  <section-analytic />
</template>

<script>
  import pageMixin from '../mixins/page'
  import SectionAnalytic from '~/components/sections/screener'

  export default {
    components: {
      SectionAnalytic
    },
    layout: 'default',
    name: 'ScreenerPage',
    mixins: [
      pageMixin()
    ],
    computed: {
      title() {
        return 'ВЫБОР ГОТОВОГО ПОРТФЕЛЯ'
      }
    },
    async asyncData ({ app, error }) {
      await Promise.all([])
      // error({ statusCode: 404 })
    },
    mounted () {}
  }
</script>
