<template>
  <div :class="[$style.alert, classes]">
    <div :class="[$style.icon]">
      <component :is="iconComponent"/>
    </div>
    <span :class="$style.message">{{ message }}</span>
  </div>
</template>

<script>
  import UiButton from '../../ui/button/index'
  import IconSuccess from '~/components/icons/success'
  import IconError from '~/components/icons/error'

  // Types
  const warning = 'warning'
  const success = 'success'
  const info = 'info'
  const error = 'error'

  export default {
    name: 'UiSnackBarSnack',
    data() {
      return {
        timeout: null
      }
    },
    components: {
      UiButton,
      IconSuccess,
      IconError
    },
    props: {
      message: {
        type: String,
        required: true
      },
      type: {
        type: String,
        default: 'success',
        required: false
      },
      id: {
        type: [String, Number],
        required: true
      },
      autoClose: {
        type: Boolean,
        default: true
      }
    },
    created() {
      if (this.autoClose) {
        this.timeout = setTimeout(() => {
          this.$emit('remove', this.id)
        }, 5000)
      }
    },
    beforeDestroy() {
      this.timeout && clearTimeout(this.timeout)
    },
    methods: {
      onclose() {
        this.$emit('remove', this.id)
      }
    },
    computed: {
      classes() {
        return this.$style[this.type]
      },
      iconComponent() {
        switch (this.type) {
          case success:
            return IconSuccess.name
          case error:
            return IconError.name
          case warning:
            throw new Error('warning не реализовано')
            return IconSuccess.name
          case info:
            throw new Error('Info не реализовано')
            return IconSuccess.name
          default:
            return IconSuccess.name
        }
      }
    }
  }
</script>

<style lang="scss" module>
.alert {
  transition: all 0.5s $transition-cubic-bezier;
  pointer-events: all;
  padding: 1em 1.4em;
  color: var(--root-color-text);
  margin-bottom: 1.5em;
  border-radius: 1em;
  display: flex;
  justify-content: flex-start;
  align-items: center;
  overflow-wrap: break-word;
  position: relative;
  flex-wrap: nowrap;
  opacity: 1;
  text-align: left;
  --root-color-error: var(--root-color-blue-500);
  --root-color-accent: var(--root-color-blue-500);
  --root-color-invert: white;
  --root-color-block-bg: white;

  width: 100%;
  @include down(md) {
    padding: 1.6em var(--root-layout-offset);
  }
}
.error {
  background: var(--root-color-error);
  .icon{
    color:  var(--root-color-error);
  }
}
.warning{
}
.info{

}
.success {
  background: var(--root-color-accent);
  .icon{
    color: var(--root-color-block-bg);
  }
}

.message {
  font-size: 1.8em;
  color: var(--root-color-invert);
  letter-spacing: -0.03em;
}
.icon {
  margin-right: 1.2em;
  @include down(md) {
    margin-right: 1.5em;
  }
  svg{
    width: 3.2em;
    height: auto;
  }
  color: var(--root-color-block-bg);
}
</style>
