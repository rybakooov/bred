<template>
  <section-profile />
</template>

<script>
  import pageMixin from '../../mixins/page'
  import SectionProfile from '~/components/sections/profile'
  import { mapActions } from 'vuex'

  export default {
    components: {
      SectionProfile
    },
    layout: 'default',
    name: 'ProfilePage',
    mixins: [
      pageMixin()
    ],
    computed: {
      title() {
        return 'Курс'
      }
    },
    methods: {
      ...mapActions('news', { getNews: 'get' }),
      ...mapActions('subjects', { getSubjects: 'get' })
    },
    async mounted () {
      if (!this.$auth.loggedIn) {
        await this.$router.push('/auth')
      }
      await Promise.all([
        this.getSubjects(),
        this.getNews()
      ])
    }
  }
</script>
