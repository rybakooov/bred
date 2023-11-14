<template>
  <v-app-bar
    clipped-left
    fixed
    app
  >
    <v-app-bar-nav-icon @click.stop="$emit('input', !value)" />
    <section-header-title />
    <v-spacer />
    <v-btn color="error" @click="logout">Выйти из аккаунта</v-btn>
  </v-app-bar>
</template>

<script>
  import SectionHeaderTitle from '~/components/sections/header/title'

  export default {
    name: 'SectionHeader',
    components: { SectionHeaderTitle },
    props: {
      value: {
        type: Boolean,
        default: true
      }
    },
    methods: {
      logout() {
        this.$auth.logout()
        if (!this.$auth.loggedIn) {
          this.$router.push('/')
        }
      }
    }
  }
</script>

<style module lang="scss">
.header {
  //padding: 1.6em;
}
.logo {
  //display: flex;
}
</style>
