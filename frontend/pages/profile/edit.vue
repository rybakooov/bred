<template>
  <section-profile-edit />
</template>

<script>
  import pageMixin from '../../mixins/page'
  import SectionProfileEdit from '~/components/sections/profile/edit'

  export default {
    components: {
      SectionProfileEdit
    },
    layout: 'default',
    name: 'ProfileEditPage',
    mixins: [
      pageMixin()
    ],
    computed: {
      title () {
        return 'Профиль'
      }
    },
    async asyncData ({ app, error }) {
      await Promise.all([])
      // error({ statusCode: 404 })
    },
    mounted () {}
  }
</script>
