<template>
  <section-auth />
</template>

<script>
import pageMixin from '../mixins/page'
import SectionAuth from '~/components/sections/auth'

export default {
  auth: false,
  components: {
    SectionAuth
  },
  layout: 'default',
  name: 'AuthPage',
  mixins: [
    pageMixin()
  ],
  computed: {
    title() {
      return 'Авторизация'
    }
  },
  async asyncData ({ app, error }) {
    await Promise.all([])
    // error({ statusCode: 404 })
  },
  mounted () {}
}
</script>
