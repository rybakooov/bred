<template>
  <div :class="$style.page">
    <layout-header />
    <main :class="$style.main">
      <transition name="fade">
        <Nuxt />
      </transition>
    </main>
    <layout-footer :class="$style.footer" />
    <layout-header-mob :class="$style.header_mob"/>
    <ui-snack-bar />
  </div>
</template>

<script>
  import LayoutHeader from '~/components/layout/header'
  import LayoutFooter from '~/components/layout/footer'
  import LayoutHeaderMob from '~/components/layout/header-mob'
  import { mapActions } from 'vuex'
  import UiSnackBar from '~/components/ui/snack-bar'
  export default {
    components: {
      UiSnackBar,
      LayoutHeaderMob,
      LayoutFooter,
      LayoutHeader
    },
    methods: {
      ...mapActions('users', ['getProgress'])
    },
    computed: {
      route() {
        return this.$route.fullPath
      }
    },
    mounted() {
      if (this.$auth.loggedIn) {
        this.getProgress(this.$auth.user.id)
      }
    },
    watch: {
      route() {
        this.getProgress(this.$auth.user.id)
        this.$scroll.scrollTo({ y: 0 })
      }
    }
  }
</script>

<style lang="scss" module>
  .page {
    display: flex;
    flex-direction: column;
    min-height: vh(100);
    background-color: var(--root-color-base-100);
  }
  .main {
    flex: 1;
    display: flex;
  }
  .footer {
    margin-top: auto;
    @include down(md) {
      display: none;
    }
  }
</style>
