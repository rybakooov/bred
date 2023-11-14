<template>
  <footer :class="$style.container">
    <p :class="$style.copyright">
      <span :class="$style.t">© StartTheHistory, 2021</span>
    </p>
    <p :class="$style.rybacode">
      <span :class="$style.t">
        Сделано в <ui-button href="https://rybacode.com/" :class="$style.link">Rybacode</ui-button>
      </span>
    </p>
  </footer>
</template>

<script>
  import UiButton from '~/components/ui/button'
  export default {
    name: 'LayoutFooter',
    components: {
      UiButton
    }
  }
</script>

<style module lang="scss">
  .container {
    height: var(--root-footer-height);
    padding: 0 var(--root-layout-offset);
    position: sticky;
    bottom: 0;
    display: flex;
    align-items: center;
    border-top: 1px solid var(--root-color-base-300);
    background-color: var(--root-color-base-100);
  }

  .copyright {
    color: var(--root-color-base-500);
    .t {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }

  .rybacode {
    margin-left: auto;
    color: var(--root-color-base-500);
    .t {
      font-size: 1.6em;
      line-height: 1.12;
      .link {
        color: var(--root-color-blue-500);
      }
    }
  }
</style>
