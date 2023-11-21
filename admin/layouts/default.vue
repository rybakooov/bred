<template>
  <v-app>
    <v-navigation-drawer
      v-model="drawer"
      clipped
      fixed
      app
    >
      <v-list>
        <v-list-item
          v-for="(item, i) in items"
          :key="i"
          :to="item.to"
          router
          exact
        >
          <v-list-item-action>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title v-text="item.title" />
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <section-header v-model="drawer" />

    <v-main>
      <v-container fluid>
        <nuxt />
      </v-container>
    </v-main>
    <v-footer
      app
      fixed
      :class="$style.footer"
    >
      <span>&copy; Go Trade {{ new Date().getFullYear() }}</span>
    </v-footer>

    <containers-notification />
  </v-app>
</template>

<script>
  import SectionHeader from '~/components/sections/header'
  import ContainersNotification from '~/components/containers/notification'

  export default {
    components: {
      ContainersNotification,
      SectionHeader
    },
    data () {
      return {
        drawer: false,
        items: [
          {
            icon: 'mdi-account-group',
            title: 'Пользователи',
            to: '/users'
          }, {
            icon: 'mdi-bookshelf',
            title: 'Курс',
            to: '/themes'
          }
        ],
        title: 'StartTheHistory'
      }
    },
    methods: {
      redirectToAuth() {
        if (!this.$auth.loggedIn || (this.$auth.user && !this.$auth.user.is_staff)) {
          this.$router.push('/')
        }
      }
    },
    mounted() {
      this.redirectToAuth()
    },
    beforeUpdate() {
      this.redirectToAuth()
    }
  }
</script>

<style lang="scss" module>
  .footer {
    z-index: 5;
  }
</style>
