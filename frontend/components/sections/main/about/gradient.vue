<template>
  <div :class="$style.container">
    <div :class="[$style.line, $style.line_first]">
      <common-bordered-text text="О курсе" />
    </div>
    <template v-for="(item, i) in content">
      <div :class="$style.line" :key="i + '_item'" :style="{ background: item.bg }"><span data-aos="fade-right" :data-aos-delay="(i + 1) * 100" :class="$style.text">{{ item.text }}</span></div>
    </template>
  </div>
</template>

<script>
import CommonBorderedText from '~/components/common/bordered-text'
export default {
  name: 'AboutGradient',
  components: {
    CommonBorderedText
  },
  data() {
    return {
      content: [
        { text: "Почему наш продукт", bg: "#3E3E3E" },
        { text: "лучше остальных", bg: "#373737" },
        { text: "курсов?", bg: "#2F2F2F" },
        { text: "", bg: "#2C2C2C" }
      ]
    }
  }
}
</script>

<style lang="scss" module>
  .line {
    display: flex;
    align-items: center;
    height: 9.2em;
    padding: 0 var(--root-layout-offset);
    margin-top: -1px;
    @include down(md) {
      height: 6.4em;
    }
    &_first {
      background: #464646;
    }
    .text {
      font-weight: 500;
      font-size: 8em;
      line-height: 1;
      letter-spacing: -0.03em;
      color: rgba(255, 255, 255, 0.16);
      @include down(xxl) {
        font-size: 7em;
      }
      @include down(md) {
        font-size: 3.2em;
      }
    }
  }
</style>
