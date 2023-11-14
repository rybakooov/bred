<template>
  <ui-popup ref="popup" transition-name="slide">
    <ui-button :class="$style.close" @click="close">
      <icon-close :class="$style.icon" />
    </ui-button>
    <section-cart />
  </ui-popup>
</template>

<script>
  import UiPopup from '../../components/ui/popup/index'
  import UiButton from '../../components/ui/button/index'
  import IconClose from '../../components/icons/close'

  export default {
    name: 'PopupCart',
    components: {
      IconClose,
      UiButton,
      UiPopup
    },
    methods: {
      open () {
        this.$refs.popup.openPopup()
      },
      close () {
        this.$refs.popup.closePopup()
      }
    }
  }
</script>

<style lang="scss" module>
  .close {
    position: absolute;
    top: 4em;
    right: 7em;
    color: var(--root-color-block-text);
    width: 4.8em;
    height: 4.8em;
    .icon {}
  }
</style>
