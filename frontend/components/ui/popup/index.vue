<template>
  <core-portal :target="target">
    <div :class="[$style.wrap, {[$style.wrap_dn]: !popupShow}]">
      <transition :name="$style[transitionName]">
        <div :class="$style.container" v-if="popupShow">
          <div :class="$style.content">
            <slot />
          </div>
        </div>
      </transition>

      <transition :name="$style.fade">
        <div v-if="popupShow" :class="classes" @click="onClickOutside"></div>
      </transition>
    </div>
  </core-portal>
</template>

<script>
import CorePortal from '../../core/portal/index'

export default {
  name: 'UiPopup',
  components: {
    CorePortal
  },
  props: {
    eventName: {
      type: String,
      default: ''
    },
    closeOnEsc: {
      type: Boolean,
      default: true
    },
    canClose: {
      type: Boolean,
      default: true
    },
    clickOutsideToClose: {
      type: Boolean,
      default: true
    },
    transitionName: {
      type: String,
      default: 'show',
      validate: v => ['slide-down', 'show'].includes(v)
    },
    blur: {
      type: Boolean,
      default: false
    },
    target: {
      type: String,
      default: ''
    }
  },
  data() {
    return {
      popupShow: false
    }
  },
  computed: {
    classes () {
      return [
        this.$style.overlay,
        { [this.$style.blur]: this.blur }
      ]
    }
  },
  methods: {
    onTogglePopup(state = true) {
      if (state) {
        this.openPopup()
      } else {
        this.closePopup()
      }
    },
    openPopup() {
      this.popupShow = true
    },
    closePopup() {
      if (this.popupShow) {
        this.$emit('close')
        this.popupShow = false
      }
    },
    onCloseButtonClicked () {
      this.closePopup()
    },
    onClickOutside () {
      if (this.clickOutsideToClose) {
        this.closePopup()
      }
    },
    onEscEvent (e) {
      if (e.keyCode === 27 && this.popupShow) {
        this.closePopup()
      }
    }
  },
  mounted() {
    this.$root.$on(this.eventName, this.onTogglePopup)
    if (this.closeOnEsc) {
      window.addEventListener('keyup', this.onEscEvent)
    }
  },
  beforeDestroy() {
    this.$root.$off(this.eventName, this.onTogglePopup)
    window.removeEventListener('keyup', this.onEscEvent)
  }
}
</script>

<style lang="scss" module>
  .wrap {
    //position: fixed;
    position: sticky;
    bottom: 100%;
    z-index: 50;
    pointer-events: none;
    //left: 0;
    //top: 0;
    //height: 100vh;
    //width: 100%;
  }
  .container {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 51;
    height: 100vh;
    pointer-events: none;
  }
  .content {
    position: relative;
    z-index: 2;
    height: 100%;
    pointer-events: all;
  }
  .overlay {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(37, 37, 37, 0.72);
    /*opacity: 0.5;*/
    z-index: 50;
    &.blur {
      backdrop-filter: blur(8px);
    }
  }

  .slide {
    &:global(-enter-active),
    &:global(-leave-active) {
      transition: transform 0.5s $transition-cubic-bezier;
    }

    &:global(-enter) {
      transform: translate(100%, 0);
    }
    &:global(-leave-to) {
      transform: translate(-100%, 0);
    }
  }

  .show {
    &:global(-enter-active),
    &:global(-leave-active) {
      transition: transform 0.3s ease, opacity 0.3s ease;
      @include down(md) {
        transition: transform 0.6s ease, opacity 0.3s ease;
      }
    }

    &:global(-leave-to),
    &:global(-enter) {
      opacity: 0;
      transform: scale(0.4);
      @include down(md) {
        transform: translate(0, 100%);
      }
    }
  }

  .slide-down {
    &:global(-enter-active),
    &:global(-leave-active) {
      transition: transform 0.5s $transition-cubic-bezier;
    }

    &:global(-leave-to),
    &:global(-enter) {
      transform: translate(0, 100%);
    }
  }

  .fade {
    &:global(-enter-active),
    &:global(-leave-active) {
      transition: opacity 0.3s ease;
    }

    &:global(-leave-to),
    &:global(-enter) {
      opacity: 0;
    }
  }

  :global(#__app) {
    transition: filter 0.3s ease;
  }
  :global(.--blur-content #__app) {
    filter: blur(8px);
  }
</style>
