<template>
  <p :class="$style.desc"><span :class="$style.text" v-html="text"></span></p>
</template>

<script>
export default {
  name: 'BlocksDescription',
  props: {
    text: {
      type: String,
      required: true
    }
  }
}
</script>

<style lang="scss" module>
  .desc {
    .text {
      font-size: 1.6em;
      line-height: 1.5;
      letter-spacing: -0.01em;
      color: #525252;
    }
  }
</style>
