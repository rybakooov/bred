<template>
  <section :class="$style.container" id="about">
    <about-gradient :class="$style.gradient"/>
    <about-advantages :class="$style.advantages"/>
  </section>
</template>

<script>
import AboutGradient from '~/components/sections/main/about/gradient'
import AboutAdvantages from '~/components/sections/main/about/advantages'
export default {
  name: 'MainAbout',
  components: {
    AboutAdvantages,
    AboutGradient
  }
}
</script>

<style lang="scss" module>
  .container {
    overflow: hidden;
  }
  .gradient {
    margin-bottom: -1px;
  }
  .advantages {
    padding: 4.8em var(--root-layout-offset) 9.6em;
    @include down(xxl) {
      padding: 4em var(--root-layout-offset) 8em;
    }
    @include down(md) {
      padding: 4em var(--root-layout-offset) 4em;
    }
  }
</style>
