<template>
  <section :class="$style.container">
    <video autoplay muted controls="false" loop>
      <source src="@/assets/video/mocks/banner.mp4" type="video/mp4" />
    </video>
    <div :class="$style.wrap">
      <p :class="$style.pre"><span :class="$style.text">{{ pre }}</span></p>
      <h1 :class="$style.title"><span :class="$style.text">{{ title }}</span></h1>
      <p :class="$style.welcome"><span :class="$style.text">{{ welcome }}</span></p>
      <button :class="$style.button" @click="scrollToEl('inside')">
        <span :class="$style.text">{{ button }}</span>
        <icon-arrow-down :class="$style.icon" />
      </button>
    </div>
  </section>
</template>

<script>
import IconArrowDown from '~/components/icons/arrow-down'
export default {
  name: 'MainBanner',
  components: {
    IconArrowDown
  },
  data() {
    return {
      pre: "Такого не делал никто",
      title: "Этот продукт полностью изменит ваше понимание мира инвестиций",
      welcome: "Добро пожаловать в команду",
      button: "Подробнее"
    }
  },
  methods: {
    scrollToEl(id) {
      const header = document.getElementById('header')
      const headerHeight = header.offsetHeight
      this.$scroll.scrollTo({ y: document.getElementById(id).getBoundingClientRect().top - headerHeight, duration: 1000 })
    }
  }
}
</script>

<style lang="scss" module>
  .container {
    width: 100%;
    height: vh(100);
    margin-top: calc(-1 * var(--root-main-header-height));
    //background: url("@/assets/images/main/banner_bg.png") no-repeat;
    background-size: cover;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: var(--root-main-header-height) var(--root-layout-offset) 0;
    overflow: hidden;
    video {
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
      min-width: 100%;
      min-height: 100%;
      height: auto;
      display: block;
    }
    &:before {
      content: "";
      display: block;
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 2;
      background: linear-gradient(180deg, #191919 15.04%, rgba(25, 25, 25, 0) 45.39%, #191919 81.8%);
    }
    &:after {
      content: '';
      display: block;
      position: absolute;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      z-index: 3;
      background-color: #191919;
      animation: video 25s infinite linear;
    }
    @include down(md) {
      height: 64em;
    }
  }
  .wrap {
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    max-width: 82.1em;
    text-align: center;
    color: #FFFFFF;
    z-index: 5;
  }
  .pre {
    margin-bottom: 1.6em;
    @include down(xxl) {
      margin-bottom: .8em;
    }
    @include down(md) {
      margin-top: auto;
    }
    .text {
      font-size: 1.6em;
      line-height: 1;
      letter-spacing: -0.01em;
      opacity: 0.49;
    }
  }
  .title {
    font-weight: 500;
    margin-bottom: 3.2em;
    @include down(xxl) {
      margin-bottom: 2.4em;
    }
    .text {
      font-size: 5.6em;
      line-height: 1;
      letter-spacing: -0.03em;
      @include down(xxl) {
        font-size: 4.8em;
      }
      @include down(md) {
        font-size: 2.6em;
      }
    }
  }
  .welcome {
    font-weight: 500;
    margin-bottom: 6.4em;
    @include down(xxl) {
      margin-bottom: 4.8em;
    }
    @include down(md) {
      margin-bottom: auto;
    }
    .text {
      font-size: 2em;
      line-height: 1.2;
      letter-spacing: -0.01em;
    }
  }
  .button {
    background: #E47138;
    border-radius: 1.2em;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 2.4em;
    height: 6em;
    margin: 0 auto;
    @include down(md) {
      width: 100%;
      margin-bottom: 1.2em;
    }
    .text {
      font-size: 1.6em;
      line-height: 0.96;
      letter-spacing: -0.01em;
    }
  }
  .icon {
    margin-left: 2.4em;
    width: 2.4em;
    height: 2.4em;
  }

  @keyframes video {
    from {
      opacity: 1;
    }
    4% {
      opacity: 0;
    }
    98% {
      opacity: 0;
    }
    to {
      opacity: 1;
    }
  }
</style>
