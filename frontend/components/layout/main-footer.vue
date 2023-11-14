<template>
  <footer :class="$style.footer">
    <div :class="$style.left"><span :class="$style.text">© StartTheHistory, 2021</span></div>
    <div :class="$style.right"><span :class="$style.text">Сайт сделан в <ui-button href="https://rybacode.com/" :class="$style.link">RybaCode</ui-button></span></div>
  </footer>
</template>

<script>
import UiButton from '~/components/ui/button'
export default {
  name: 'MainFooter',
  components: { UiButton }
}
</script>

<style lang="scss" module>
  .footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    padding: 3.2em var(--root-layout-offset);
    background: #F4F4F4;
    color: #000000;
    @include down(md) {
      flex-direction: column;
      align-items: flex-start;
      padding: 2.4em var(--root-layout-offset);
    }
    .text {
      font-weight: 500;
      font-size: 1.6em;
      line-height: 1.12;
      letter-spacing: -0.01em;
      .link {
        color: #E47138;
      }
    }
  }
  .left {
    @include down(md) {
      margin-bottom: 1.6em;
    }
  }
</style>
