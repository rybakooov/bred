<template>
  <div :class="$style.container">
    <template v-for="(item, i) in list">
      <div :class="$style.listItem" :key="i + '_item'">
        <p :class="$style.bold"><span :class="$style.text">{{ item.title }}</span></p>
        <p :class="$style.paragraph" v-if="item.text"><span :class="$style.text">{{ item.text }}</span></p>
      </div>
    </template>
  </div>
</template>

<script>
export default {
  name: 'BlocksAnalyze',
  props: {
    list: {
      type: Array,
      required: true
    }
  }
}
</script>

<style lang="scss" module>
.container {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding:  2.4em 2.4em 3.4em 0;
  @include down(md) {
    padding: 0 2.4em 2.4em;
  }
}
.listItem {
   &:not(:last-child) {
     padding-bottom: 1.6em;
     margin-bottom: 1.6em;
     border-bottom: 1px solid var(--root-color-base-300);
   }
 }
.bold {
  .text {
    font-weight: 500;
    font-size: 1.6em;
    line-height: 1.12;
    letter-spacing: -0.01em;
    color: #000000;
  }
}
.paragraph {
  color: #525252;
  margin-top: .8em;
  .text {
    font-size: 1.4em;
    line-height: 1.14;
    letter-spacing: -0.01em;
  }
}
</style>
