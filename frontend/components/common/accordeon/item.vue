<template>
  <div :class="classes">
    <div :class="$style.header" @click="value=!value">
      <p :class="$style.text" :style="fontStyle" data-aos="fade-right">{{ source.title }}</p>
      <div>
        <icon-plus :fill="icon" :class="$style.icon" />
      </div>
    </div>
    <ui-collapse :value="value">
      <div :class="$style.answer">
        <span :class="$style.text">{{ source.text }}</span>
      </div>
    </ui-collapse>
  </div>
</template>

<script>
import UiCollapse from '~/components/ui/collapse'
import IconPlus from '~/components/icons/plus'
export default {
  name: 'AccordeonItem',
  components: {
    IconPlus,
    UiCollapse
  },
  props: {
    source: {
      type: Object,
      required: true
    },
    icon: {
      type: String,
      required: true
    },
    fontStyle: {
      type: Object,
      required: true
    }
  },
  data() {
    return {
      value: false
    }
  },
  computed: {
    classes() {
      return [
        this.$style.container,
        { [this.$style.opened]: this.value }
      ]
    }
  }
}
</script>

<style lang="scss" module>
  .container {
    border-bottom: 1px solid #C3C3C3;
  }
  .header {
    padding: 3.2em 0;
    display: flex;
    justify-content: space-between;
    align-items: center;
    cursor: pointer;
  }
  .text {
    font-size: 1.6em;
    line-height: 1.5;
    letter-spacing: -0.03em;
    color: #272727;
  }
  .icon {
    margin-left: 2em;
    width: 2.4em;
    height: 2.4em;
    flex-shrink: 0;
    transition: transform 0.4s ease;
  }
  .answer {
    color: #272727;
    margin-top: 1.6em;
    padding-bottom: 1.6em;
    .text {
      font-size: 1.6em;
      line-height: 1.5;
      letter-spacing: -0.03em;
    }
  }
  .opened {
    .icon {
      background-color: var(--root-color-text-1);
      transform: rotate(45deg);
    }
  }
</style>
