<template>
  <div :class="$style.container">
    <div :class="$style.top">
      <h6 :class="$style.title"><span :class="$style.text" v-html="'Стоимость <br>обучения'"></span></h6>
      <div :class="$style.bottom">
        <p :class="$style.first"><span :class="$style.text">Дополнительная скидка в 27% действует 24 часа. <br />Общая скидка 54% на один день🔥</span></p>
        <p :class="$style.second"><span :class="$style.text">Успейте приобрести со скидкой</span></p>
      </div>
    </div>
    <div :class="$style.middle">
      <div :class="$style.new">
        <p :class="$style.subPrice"><span :class="$style.text">Актуальная цена</span></p>
        <h1 :class="$style.price"><span :class="$style.text">4 400 ₽</span></h1>
      </div>
      <div :class="$style.old">
        <p :class="$style.subPrice"><span :class="$style.text">Старая цена</span></p>
        <h1 :class="$style.price"><span :class="$style.text"><s>10 000 ₽</s></span></h1>
      </div>
    </div>
    <div :class="$style.bottom">
      <p :class="$style.first"><span :class="$style.text">Дополнительная скидка в 27% действует 24 часа. <br />Общая скидка 54% на один день🔥</span></p>
      <p :class="$style.second"><span :class="$style.text">Успейте приобрести со скидкой</span></p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'EndPrice'
}
</script>

<style lang="scss" module>
  .container {
    width: 100%;
    background: #E47138;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    color: var(--root-color-base-0);
    border-radius: 2.5em 0 0 2.5em ;
    @include down(xxl) {
      border-radius: 2.5em 2.5em 0 0;
    }
    @include down(md) {
      text-align: center;
    }
  }
  .title {
    font-weight: 500;
    padding: 3.2em 0 0 3.2em;
    margin-bottom: .5em;
    @include down(md) {
      padding: 2.4em 0 0 0;
    }
    .text {
      font-size: 3em;
      line-height: 1.07;
      letter-spacing: -0.03em;
      br {
        @include down(md) {
          display: none;
        }
      }
    }
  }
  .top {
    .bottom {
      display: none;
      @include down(xxl) {
        display: block;
      }
      @include down(md) {
        display: none;
      }
    }
    @include down(xxl) {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
    }
    @include down(md) {
      display: block;
    }
  }
  .middle {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    padding: 3.2em;
    @include down(md) {
      padding: 4.8em 0;
    }
  }
  .subPrice {
    margin-bottom: .8em;
    .text {
      font-size: 1.6em;
      line-height: 1.12;
      letter-spacing: -0.01em;
      @include down(md) {
        font-size: 1.4em;
        line-height: 1.14;
      }
    }
  }
  .price {
    font-weight: 500;
    .text {
      font-size: 6.4em;
      line-height: 1;
      letter-spacing: -0.03em;
      @include down(md) {
        font-size: 3em;
        line-height: 1.07;
      }
    }
  }
  .old {
    opacity: 0.5;
  }
  .bottom {
    background: #CC5D26;
    padding: 3.2em;
    border-radius: 0 0 0 2.5em;
    @include down(xxl) {
      background: none;
      display: none;
      padding: 3.2em 3.2em 0 0;
    }
    @include down(md) {
      display: block;
      padding: 0 0 2.4em 0;
    }
    .text {
      font-size: 1.6em;
      line-height: 1.12;
      letter-spacing: -0.01em;
      @include down(md) {
        font-size: 1.4em;
        line-height: 1.14;
      }
    }
  }
  .first {
    font-weight: 500;
    margin-bottom: .8em;
  }
  .second {
    opacity: 0.75;
  }
</style>
