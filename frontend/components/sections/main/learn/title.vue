<template>
  <div :class="$style.container">
    <h1 :class="$style.title" data-aos="fade-right"><span :class="$style.text" v-html="title"></span></h1>
    <div :class="$style.wrap" data-aos="fade-left">
      <p :class="$style.description"><span :class="$style.text">{{ desc }}</span></p>
      <div :class="$style.content">
        <div :class="$style.item" v-for="(item, i) in content" :key="i + '_item'">
          <div :class="$style.qty"><span :class="$style.text">{{ item.qty }}</span></div>
          <span :class="$style.text">{{ item.text }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'LearnTitle',
  data() {
    return {
      title: "Чему <br>вы научитесь",
      desc: "Вас ждет большая программа, знания которой можно приравнять к пяти годам самостоятельной практики",
      content: [
        { qty: "8", text: "модулей" },
        { qty: "31", text: "онлайн-урок" }
      ]
    }
  }
}
</script>

<style lang="scss" module>
  .container {
    display: flex;
    justify-content: space-between;
    @include down(xxl) {
      flex-direction: column;
    }
  }
  .title {
    font-weight: 500;
    @include down(xxl) {
      margin-bottom: 6.4em;
    }
    @include down(md) {
      margin-bottom: 4.8em;
    }
    .text {
      font-size: 6.4em;
      line-height: 1;
      letter-spacing: -0.03em;
      color: #000000;
      @include down(md) {
        font-size: 3em;
        line-height: 1.07;
      }
    }
  }
  .wrap {
    max-width: 48em;
    margin-right: 6.4em;
    @include down(xxl) {
      margin-right: 0;
    }
  }
  .description {
    margin-bottom: 4.6em;
    color: #525252;
    font-weight: 450;
    @include down(xxl) {
      margin-bottom: 2.4em;
    }
    .text {
      font-size: 1.6em;
      line-height: 1.5;
      letter-spacing: -0.01em;
    }
  }
  .content {
    display: flex;
    justify-content: space-between;
    max-width: 40.5em;
  }
  .item {
    display: flex;
    align-items: center;
    color: #525252;
    @include down(md) {
      flex-direction: column;
      align-items: flex-start;
    }
    .text {
      font-size: 1.6em;
      line-height: 1;
      letter-spacing: -0.015em;
    }
  }
  .qty {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 1.2em;
    color: #FFFFFF;
    font-weight: 500;
    padding: 0 1.8em;
    height: 3.4em;
    background: #E47138;
    border-radius: 1.2em;
    @include down(md) {
      margin-right: 0;
      margin-bottom: .8em;
    }
    .text {
      font-size: 1.6em;
      line-height: 1;
      letter-spacing: -0.015em;
    }
  }
</style>
