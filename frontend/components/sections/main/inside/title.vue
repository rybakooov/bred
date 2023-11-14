<template>
  <p :class="$style.title"><span :class="$style.text" v-html="text"></span></p>
</template>

<script>
export default {
  name: 'BlocksTitle',
  props: {
    text: {
      type: String,
      required: true
    }
  }
}
</script>

<style lang="scss" module>
.title {
  color: var(--root-color-base-1000);
  margin-bottom: 1.6em;
  .text {
    font-weight: 500;
    font-size: 2em;
    line-height: 1.2;
    letter-spacing: -0.03em;
  }
}
</style>
