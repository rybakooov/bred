<template>
  <a @click="onClick" :class="classes" v-if="href" :href="href" rel="noopener" target="_blank">
    <slot name="before" />
    <span :class="$style.t"><slot /></span>
    <slot name="after" />
  </a>

  <router-link @click.native="onClick" :class="classes" v-else-if="to" :to="routeTo">
    <slot name="before" />
    <span :class="$style.t"><slot /></span>
    <slot name="after" />
  </router-link>

  <component @click="onClick" :is="tag" :class="classes" v-else>
    <slot name="before" />
    <span :class="$style.t"><slot /></span>
    <slot name="after" />
  </component>
</template>

<script>
  export default {
    name: 'UiButton',
    props: {
      href: {
        type: String,
        default: ''
      },
      to: {
        type: String,
        default: ''
      },
      tag: {
        type: String,
        default: 'button'
      },
      circle: {
        type: Boolean,
        default: false
      },
      fill: {
        type: Boolean,
        default: false
      },
      disabled: {
        type: Boolean,
        default: false
      },
      loading: {
        type: Boolean,
        default: false
      },
      theme: {
        type: String,
        default: '',
        validator (value) {
          return ['', 'red'].includes(value)
        }
      },
      size: {
        type: String,
        default: '',
        validator (value) {
          return ['', 'md', 'large'].includes(value)
        }
      }
    },
    methods: {
      onClick (event) {
        if (!this.disabled && !this.loading) {
          this.$emit('click', event)
        }
      }
    },
    computed: {
      classes () {
        return [
          this.$style.button,
          { [this.$style.fill]: this.fill },
          { [this.$style.circle]: this.circle },
          { [this.$style.disabled]: this.disabled || this.loading },
          { [this.$style.loading]: this.loading },
          { [this.$style[this.theme]]: this.theme },
          { [this.$style[this.size]]: this.size }
        ]
      },
      routeTo () {
        return this.$i18n.createPath(this.to)
        // if (this.$root.$i18n.locale === this.$root.$i18n.defaultLocale) {
        //   return to
        // } else {
        //   return `/${this.$root.$i18n.locale}${to}`
        // }
        // let to = this.to
        // if (this.to.includes('#')) {
        //   to = to.replace(/\/#/, '#').replace(/#/, '/#')
        // } else {
        //   to = this.to.replace(/\/$/, '') + '/'
        // }
        // return `/${this.$root.$i18n.locale}${to}`
      }
    }
  }
</script>

<style lang="scss" module>
  .button {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    transition: all $transition-duration;
    position: relative;
    user-select: none;
  }

  /*
   * Themes
   */
  .red {
    background-color: var(--root-color-red-500);
    color: var(--root-color-base-0);
    font-family: var(--root-font-family-header);
    font-weight: 500;
    border-radius: 0.8em;
    &.disabled {
      background-color: var(--root-color-base-200);
    }
    &:hover {
      background-color: var(--root-color-red-400);
    }
    &:active {
      background-color: var(--root-color-red-550);
    }
  }

  /*
   * State
   */
  .disabled {
    pointer-events: none;
    //background-color: var(--root-color-base-200);
  }

  /*
   * Sizes
   */
  .md {
    height: 5.2em;
    padding: 0 3.4em;
    .t {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }

  .large {
    height: 5.8em;
    padding: 0 3.2em;
    .t {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }

  //@keyframes spinner {
  //  0% {
  //    transform: rotate(0deg);
  //  }
  //  100% {
  //    transform: rotate(360deg);
  //  }
  //}
</style>
