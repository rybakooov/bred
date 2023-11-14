<template>
  <section-main :class="$style.main"/>
</template>

<script>
  import pageMixin from '../mixins/page'
  import aos from '../mixins/aos'
  import SectionMain from '~/components/sections/main'
  import { mapActions } from 'vuex'

  export default {
    auth: false,
    components: {
      SectionMain
    },
    layout: 'landing',
    name: 'MainPage',
    mixins: [
      pageMixin(),
      aos()
    ],
    computed: {
      title() {
        return 'Добро пожаловать!'
      }
    }
}
</script>

<style lang="scss" module>
  .main {
  }
</style>
