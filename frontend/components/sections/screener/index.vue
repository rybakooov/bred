<template>
  <section :class="$style.section">
    <h2 :class="$style.title">
      <span :class="$style.t">
        Боты
      </span>
    </h2>
    <ui-button :class="$style.bots" theme="red" size="md" href="https://t.me/macd_rsi_bot"><span :class="$style.text">MACD RSI</span></ui-button>
    <ui-button :class="$style.bots" theme="red" size="md" href="https://t.me/ema_macd_bot"><span :class="$style.text">EMA MACD</span></ui-button>
    <h2 :class="$style.title">
      <span :class="$style.t">
        Скринер
      </span>
    </h2>
    <screener-search :class="$style.search" @input="inputAction" />
    <transition name="fade">
      <div v-if="response">
        <screener-content :response="response" :usa="usa"/>
      </div>
    </transition>
  </section>
</template>

<script>
  import ScreenerSearch from '~/components/sections/screener/search'
  import UiButton from '~/components/ui/button'
  import ScreenerContent from '~/components/sections/screener/content'

  export default {
    name: 'SectionScreener',
    components: {
      ScreenerContent,
      UiButton,
      ScreenerSearch
    },
    data() {
      return {
        response: null,
        usa: true
      }
    },
    methods: {
      inputAction(e) {
        this.response = null
        if (e) {
          this.response = e.response
          this.usa = e.usa
        }
      }
    }
  }
</script>

<style lang="scss" module>
  .section {
    padding: 3.2em var(--root-layout-offset) 0;
    width: 100%;
    margin: 0 auto;
  }
  .search {
    margin-top: 3.2em;
  }
  .wrapper {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-template-rows: auto;
    gap: 1.6em;
    margin-top: 3.2em;
    @include down(xxl) {
      grid-template-columns: 1fr;
    }
    @include down(md) {
      grid-template-columns: 1fr;
    }
  }

  .bots {
    margin-bottom: 4em;
    & + & {
      margin-left: 1.6em;
      @include down(md) {
        margin-left: 0.8em;
      }
    }
  }
  .title {
    font-family: var(--root-font-family-header);
    font-weight: 500;
    margin-bottom: 1.6em;
    .t {
      font-size: 2.4em;
      line-height: 1.08;
    }
  }
</style>
