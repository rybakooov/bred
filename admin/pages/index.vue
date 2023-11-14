<template>
  <div :class="$style.page">
    <section-auth />
  </div>
</template>

<script>
  import SectionAuth from '~/components/sections/auth'

  export default {
    auth: false,
    components: {
      SectionAuth
    },
    layout: 'auth',
    name: 'MainPage'
  }
</script>

<style lang="scss" module>
  .page {

  }
</style>
