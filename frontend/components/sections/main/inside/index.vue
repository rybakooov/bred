<template>
  <section :class="$style.container" id="inside">
    <div :class="$style.wrap">
      <div :class="$style.title" data-aos="fade-up"><span :class="$style.text">Что внутри продукта</span></div>
      <inside-blocks />
    </div>
    <div :class="$style.tapes">
      <div :class="$style.tape">
        <div :class="$style.content">
          <p :class="$style.border"><span :class="$style.text">{{ border }}</span></p>
          <p :class="$style.paragraph"><span :class="$style.text">{{ functional }}</span></p>
          <icon-fire :class="$style.fire"/>
          <p :class="$style.paragraph"><span :class="$style.text">{{ functional }}</span></p>
        </div>
        <div :class="$style.content">
          <p :class="$style.border"><span :class="$style.text">{{ border }}</span></p>
          <p :class="$style.paragraph"><span :class="$style.text">{{ functional }}</span></p>
          <icon-fire :class="$style.fire"/>
          <p :class="$style.paragraph"><span :class="$style.text">{{ functional }}</span></p>
        </div>
      </div>
      <div :class="$style.tape">
        <div :class="$style.content">
          <p :class="$style.border"><span :class="$style.text">{{ border }}</span></p>
          <p :class="$style.paragraph"><span :class="$style.text">{{ functional }}</span></p>
          <icon-fire :class="$style.fire"/>
          <p :class="$style.paragraph"><span :class="$style.text">{{ functional }}</span></p>
        </div>
        <div :class="$style.content">
          <p :class="$style.border"><span :class="$style.text">{{ border }}</span></p>
          <p :class="$style.paragraph"><span :class="$style.text">{{ functional }}</span></p>
          <icon-fire :class="$style.fire"/>
          <p :class="$style.paragraph"><span :class="$style.text">{{ functional }}</span></p>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
  import InsideBlocks from '~/components/sections/main/inside/blocks'
  import IconFire from '~/components/icons/fire'

  export default {
    name: 'MainInside',
    components: {
      IconFire,
      InsideBlocks
    },
    data() {
      return {
        border: "Разработка еще ведется",
        functional: "функционал будет только расширяться"
      }
    }
  }
</script>

<style lang="scss" module>
  .container {
    color: #272727;
    overflow: hidden;
   }
  .wrap {
    padding: 0 var(--root-layout-offset);
  }
  .title {
    margin-bottom: 3.2em;
    .text {
      font-weight: 500;
      font-size: 3em;
      line-height: 1.07;
      letter-spacing: -0.03em;
    }
  }
  .tapes {
    position: relative;
    margin-top: 18em;
    color: #FFFFFF;
    @include down(md) {
      font-size: 0.4em;
    }
  }
  .image {
    position: absolute;
    bottom: 0;
    right: 0;
    width: 114%;
    height: 14em;
    object-fit: cover;
    @include down(xxl) {
      height: 7.5em;
    }
    &_back {
      opacity: .5;
      right: -14%;
      width: 130%;
      @include down(md) {
        right: 0;
      }
    }
    &_forward {
      width: 105%;
    }
  }
  .tape {
    background-color: #21201C;
    display: flex;
    align-items: center;
    height: 14em;
    width: 130%;
    &:first-child {
      opacity: .5;
      .content {
        animation-direction: reverse;
      }
    }
    &:last-child {
      position: absolute;
      right: 0;
      bottom: 0;
      transform-origin: bottom right;
      transform: rotate(8deg);
    }
  }
  .content {
    display: flex;
    align-items: center;
    animation: runningLine 15s linear infinite;
  }
  .border {
    border: 1px solid rgba(255, 255, 255, 0.56);
    height: 7.2em;
    display: flex;
    align-items: center;
    padding: 0 3.2em;
    border-radius: 4em;
    margin-right: 6.4em;
    .text {
      font-weight: 500;
      font-size: 2.4em;
      line-height: 1;
      letter-spacing: -0.03em;
      white-space: nowrap;
    }
  }
  .paragraph {
    font-weight: 500;
    margin-right: 6.4em;
    .text {
      white-space: nowrap;
      font-size: 4.8em;
      line-height: 1;
      letter-spacing: -0.03em;
    }
  }
  .fire {
    width: 3.4em;
    height: 4.8em;
    margin-right: 6.4em;
  }
  @keyframes runningLine {
    from { transform: translateX(0)}
    to { transform: translateX(-100%)}
  }
</style>
