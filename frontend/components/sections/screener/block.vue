<template>
  <div :class="$style.container">
    <div :class="$style.header">
      <p :class="[$style.subtitle, $style.subtitle_up]" v-if="subtitle"><span :class="$style.text">{{ subtitle }}</span></p>
      <div :class="$style.wrap">
        <h1 :class="[$style.title, {[$style.title_lg]: size}]"><span :class="$style.text">{{ title }}</span></h1>
        <p :class="$style.subtitle" v-if="desc"><span :class="$style.text">{{ desc }}</span></p>
      </div>
    </div>
    <div :class="$style.content">
      <slot></slot>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ScreenerBlock',
  props: {
    size: {
      type: Boolean,
      default: false
    },
    subtitle: {
      type: String,
      default: ""
    },
    title: {
      type: String,
      default: ""
    },
    desc: {
      type: String,
      default: ""
    }
  }
}
</script>

<style lang="scss" module>
.container {
  background: var(--root-color-base-0);
  border: 1px solid var(--root-color-base-200);
  border-radius: 1.2em;
  width: 100%;
  @include down(xxl) {
    overflow: auto;
  }
}
.header {
  padding: 3.2em 3.2em 2.4em;
  border-bottom: 1px solid var(--root-color-base-200);
  @include down(md) {
    padding: 2.4em 1.6em;
  }
}

.subtitle {
  color: var(--root-color-base-700);
  margin-left: 2.4em;
  margin-bottom: .5em;
  .text {
    font-size: 1.4em;
    line-height: 1.14;
  }
  &_up {
    margin-bottom: .8em;
    margin-left: 0;
  }
}
.wrap {
  display: flex;
  align-items: flex-end;
}
.title {
  font-weight: 500;
  color: var(--root-color-base-1000);
  font-family: var(--root-font-family-header);
  .text {
    font-size: 2.4em;
    line-height: 1.08;
  }
  &_lg {
    .text {
      font-size: 3.6em;
      line-height: 1.06;
    }
  }
}

.content {
  padding: 2.4em 3.2em 3.2em;
  @include down(xxl) {
    overflow: auto;
  }
  @include down(md) {
    padding: 2.4em 1.6em;
  }
}
</style>
