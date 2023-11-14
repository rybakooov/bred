<template>
  <div :class="$style.wrap">
    <p :class="$style.content"><span :class="$style.text">{{ text }}</span></p>
  </div>
</template>

<script>
export default {
  name: 'CommonBorderedText',
  props: {
    text: {
      type: String,
      default: ""
    }
  }
}
</script>

<style lang="scss" module>
  .wrap {
    border: 1px solid #6B6B6B;
    border-radius: 1.2em;
    padding: .8em 1.6em;
    display: inline-block;
    font-weight: 500;
    color: #FFFFFF;
  }
  .content {
    .text {
      font-size: 1.6em;
      line-height: 1.2;
      letter-spacing: -0.01em;
    }
  }
</style>
