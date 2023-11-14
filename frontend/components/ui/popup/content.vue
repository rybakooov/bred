<template>
  <ui-popup ref="popup" blur @close="onclose" :close-on-esc="closeOnEsc" :click-outside-to-close="clickOutsideToClose" :can-close="canClose" :target="target">
    <div :class="[$style.popup, classPopup]" ref="scroll" @click="close">
      <transition name="fade">
        <div v-if="loading" :class="$style.loading">
          <slot name="loading" />
        </div>
      </transition>

      <div :class="[$style.container]">
        <transition :name="$style.show">
          <div :class="[$style.content, classContent]" @click.stop v-if="!loading">
            <ui-button :class="[$style.close, {[$style.close_outside]: closeOutside}]" @click="close" v-if="canClose">
              <icon-close />
            </ui-button>
            <slot />
          </div>
        </transition>
      </div>
    </div>
  </ui-popup>
</template>

<script>
import UiPopup from './index'
import UiButton from '~/components/ui/button'
import IconClose from '~/components/icons/close'
export default {
  name: 'UiPopupContent',
  components: {
    IconClose,
    UiButton,
    UiPopup
  },
  props: {
    classContent: {
      type: String,
      default: ''
    },
    classPopup: {
      type: String,
      default: ''
    },
    loading: {
      type: Boolean,
      default: false
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
    closeOutside: {
      type: Boolean,
      default: false
    },
    target: {
      type: String,
      default: ''
    }
  },
  methods: {
    open () {
      this.$refs.popup.openPopup()
      this.$nextTick(() => {
        this.$scroll.lock(true, this.$refs.scroll)
      })
    },
    close (hard = false) {
      if (hard || (this.canClose && this.clickOutsideToClose)) {
        this.$refs.popup.closePopup()
      }
    },
    onclose () {
      this.$scroll.lock(false, this.$refs.scroll)
    }
  }
}
</script>

<style lang="scss" module>
.popup {
  position: relative;
  top: 0; left: 0;
  height: 100%;
  width: 100%;
  overflow: auto;
  -webkit-overflow-scrolling: touch;
  scrollbar-color: transparent transparent;
  scrollbar-width: none;
  display: grid;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  &::-webkit-scrollbar {
    display: none;
  }
}
.loading {
  position: absolute;
  top: 0; left: 0; right: 0; bottom: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  pointer-events: none;
}
.container {
  padding: 8em;
  @include down(lg) {
    padding: 4em;
  }
  @include down(md) {
    padding: 0;
    height: 100%;
    width: 100vw;
  }
}
.content {
  position: relative;
  display: inline-block;
  cursor: default;
  @include down(md) {
    width: 100vw;
  }
}
.close {
  //position: fixed;
  bottom: calc(100% + 0.8em);
  left: calc(100% + 0.8em);
  transition: transform 0.2s;
  z-index: 3;
  color: var(--root-color-base-0);
  pointer-events: all;
  @include down(md) {
    margin-left: auto;
    padding: 1.6em;
    left: auto;
    right: 0;
    display: flex;
    top: 0;
  }
  svg {
    display: block;
  }
  &_outside {
    bottom: calc(100% + 2em);
    top: auto;
    @include down(lg) {
      bottom: calc(100% + 1em);
      right: 1.6em;
    }
    @include down(md) {
      bottom: auto;
      top: 2.5em;
      right: 2em;
    }
  }
  &:hover {
    transform: scale(1.4);
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
</style>
