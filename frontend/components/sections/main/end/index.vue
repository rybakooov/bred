<template>
  <section :class="$style.container" id="buy">
    <div :class="$style.wrap" data-aos="zoom-in" data-aos-duration="2000">
      <template v-if="true">
        <end-price />
        <end-form />
      </template>
      <div :class="$style.closed" v-else>
        <h6 :class="$style.closedTitle"><span :class="$style.t">Продажи закрыты</span></h6>
        <p :class="$style.closedText"><span :class="$style.t">Ожидайте второго потока</span></p>
      </div>
    </div>
  </section>
</template>

<script>
import EndPrice from '~/components/sections/main/end/price'
import EndForm from '~/components/sections/main/end/form'
export default {
  name: 'MainEnd',
  components: {
    EndForm,
    EndPrice
  }
}
</script>

<style lang="scss" module>
  .container {
    padding: 0 var(--root-layout-offset);
  }
  .wrap {
    display: flex;
    border-radius: 2.5em;
    @include down(xxl) {
      flex-direction: column;
    }
  }

  .closed {
    background: #E47138;
    padding: 6.4em;
    color: var(--root-color-base-0);
    width: 100%;
    display: flex;
    align-items: center;
    flex-direction: column;
    border-radius: 2.5em;
    &Title {
      font-family: var(--root-font-family-header);
      font-weight: 500;
      .t {
        font-size: 6.4em;
      }
    }
    &Text {
      margin-top: 2.4em;
      .t {
        font-size: 2.4em;
      }
    }
  }
</style>
