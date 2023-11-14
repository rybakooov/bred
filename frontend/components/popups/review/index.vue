<template>
  <ui-popup-content ref="popup" :class-content="$style.container">
    <div :class="$style.content">
      <img :src="img" alt="">
    </div>
  </ui-popup-content>
</template>

<script>
  import UiPopupContent from '~/components/ui/popup/content'

  export default {
    name: 'PopupReview',
    components: {
      UiPopupContent
    },
    data() {
      return {
        img: null
      }
    },
    methods: {
      openPopup(img) {
        this.img = img
        this.$refs.popup.open()
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    @include down(md) {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
  }

  .content {
    border-radius: 1.2em;
    overflow: hidden;
    background-color: var(--root-color-base-0);
    width: 54em;
    //position: relative;
    //padding-bottom: 200%;
    @include down(md) {
      width: calc(100% - 3.2em);
      margin-bottom: 2.4em;
    }
    img {
      //position: absolute;
      width: 100%;
      //height: 100%;
      //top: 0;
      //left: 0;
      //object-position: center;
      //object-fit: cover;
    }
  }
</style>
