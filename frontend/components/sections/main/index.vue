<template>
  <div :class="$style.container">
    <main-banner />
    <main-inside :class="[$style.section, $style.section_first]" />
    <main-learn :class="$style.section" />
    <main-about  :class="[$style.section, $style.section_third]" />
    <main-reviews :class="$style.section" />
    <main-faq :class="$style.section" />
    <main-end :class="$style.section" />
  </div>
</template>

<script>
  import MainBanner from '~/components/sections/main/banner'
  import MainInside from '~/components/sections/main/inside/index'
  import MainLearn from '~/components/sections/main/learn/index'
  import MainAbout from '~/components/sections/main/about'
  import MainReviews from '~/components/sections/main/reviews'
  import MainFaq from '~/components/sections/main/faq'
  import MainEnd from '~/components/sections/main/end'

  export default {
    name: 'SectionMain',
    components: {
      MainEnd,
      MainFaq,
      MainReviews,
      MainAbout,
      MainLearn,
      MainInside,
      MainBanner
    }
  }
</script>

<style module lang="scss">
  .container {
    width: 100%;
  }
  .section {
    padding-top: 12em;
    &_first {
      padding-top: 6.4em;
      @include down(xxl) {
        padding-top: 4em;
      }
    }
    &_third {
      padding-top: 0 !important;
      margin-top: 12em;
      @include down(xxl) {
        margin-top: 8em;
      }
      @include down(md) {
        margin-top: 6.4em;
      }
    }
    &:last-child {
      padding-bottom: 12em;
      @include down(xxl) {
        padding-bottom: 8em;
      }

      @include down(md) {
        padding-bottom: 6.4em;
      }
    }
    @include down(xxl) {
      padding-top: 8em;
    }

    @include down(md) {
      padding-top: 6.4em;
    }
  }
</style>
