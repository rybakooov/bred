<template>
  <ui-button :class="$style.btn" @click="onClick" @transitionend="ontransitionend">
    <span :class="classes">
      <span :class="$style.line"></span>
      <span :class="$style.line"></span>
    </span>
  </ui-button>
</template>

<script>
import UiButton from '~/components/ui/button'
export default {
  name: 'UiLandingBurger',
  components: {
    UiButton
  },
  props: {
    value: {
      type: Boolean,
      default: false
    }
  },
  data () {
    return {
      changeState: false
    }
  },
  computed: {
    classes () {
      return [
        this.$style.burger,
        { [this.$style.change]: this.changeState },
        { [this.$style.open]: this.value }
      ]
    }
  },
  methods: {
    ontransitionend () {
      this.changeState = false
    },
    onClick(event) {
      this.$emit('click', event)
      this.toggle()
    },
    toggle() {
      this.$emit('input', !this.value)
    }
  },
  watch: {
    value () {
      this.changeState = true
    }
  }
}
</script>

<style lang="scss" module>
.btn {
  height: 100%;
}
.burger {
  display: flex;
  flex-direction: column;
  width: 5.5em;
  height: 1.6em;
  padding: 0.3em 0;
}
.line {
  position: relative;
  height: 2px;
  flex-shrink: 0;
  display: block;
  background-color: var(--root-color-base-0);
  transition: transform 0.2s ease-in-out, margin-bottom 0.2s ease, top 0.2s ease;
  transform-origin: 50% 50%;
  top: 0;
  &:nth-child(1) {
    margin-bottom: .6em;
  }
}
.open {
  .line:nth-child(1) {
    transform: translateY(4px) rotate(45deg);
    margin-bottom: 0;
  }
  .line:nth-child(2) {
    transform: translateY(2px) rotate(-45deg);
  }
}
</style>
