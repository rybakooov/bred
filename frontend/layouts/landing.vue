<template>
  <div :class="$style.page">
    <main-header />
    <main :class="$style.main">
      <Nuxt />
    </main>
    <main-footer :class="$style.footer" />
  </div>
</template>

<script>
import MainHeader from '~/components/layout/main-header'
import MainFooter from '~/components/layout/main-footer'
export default {
  components: {
    MainFooter,
    MainHeader
  },
  mounted() {
    this.$nextTick(() => {
      this.$app.$loading.start()
    })
  }
}
</script>

<style lang="scss" module>
.page {
  display: flex;
  flex-direction: column;
  min-height: vh(100);
  background-color: var(--root-color-base-0);
  font-family: 'SuisseIntl', sans-serif;
}
.main {
  flex: 1;
  display: flex;
}
.footer {
  margin-top: auto;
}
</style>
