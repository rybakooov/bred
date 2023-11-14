<template>
  <section :class="$style.container" id="learn">
    <div :class="$style.wrap">
      <learn-title />
      <common-accordeon :class="$style.middle" :source="accordeon"/>
      <p data-aos="fade-up" :class="$style.comment"><span :class="$style.text">Вы научитесь слишком многому, чтобы это описать</span></p>
    </div>
  </section>
</template>

<script>
import LearnTitle from '~/components/sections/main/learn/title'
import CommonAccordeon from '~/components/common/accordeon/index'
export default {
  name: 'MainLearn',
  components: {
    CommonAccordeon,
    LearnTitle
  },
  data() {
    return {
      accordeon: [
        {
          title: "Четко определять точку входа в позицию и точку выхода",
          text: "Благодаря большому количеству новых инструментов и знаний, этот вопрос будет закрыт раз и навсегда"
        },
        {
          title: "Понимать перспективы любой компании на нужную вам дистанцию",
          text: "В этом состоит ключевая цель любого анализа - понимать перспективы и вероятность роста"
        },
        {
          title: "Определять периоды глобальной и локальной коррекции, заранее вставать в шорт или выходить из позиций",
          text: "Мы будем углубленно изучать данные темы, я считаю их особо важными "
        },
        {
          title: "Разбираться в двух типах фундаментального и технического анализов, а также волновом",
          text: "Это лишь вершина айсберга, мы будем разбираться во многих других вещах, допустим - психология инвестирования, циклы и прочее"
        },
        {
          title: "Читать рынок так, будто вы с детства говорите на его языке",
          text: "К этому стремится каждый инвестор"
        }
      ]
    }
  }
}
</script>

<style lang="scss" module>
  .container {
    padding: 0 var(--root-layout-offset);
    overflow: hidden;
  }
  .wrap {
    background: #F4F4F4;
    border-radius: 2.5em;
    padding: 11.2em 11.2em 8em;
    @include down(xxl) {
      padding: 6.4em 3.2em;
    }
    @include down(md) {
      padding: 4.8em 1.6em;
    }
  }
  .middle {
    margin-top: 8em;
    border-top: 1px solid #C3C3C3;
    @include down(xxl) {
      margin-top: 6.4em;
    }
    @include down(md) {
      margin-top: 4.8em;
    }
  }
  .comment {
    margin-top: 8em;
    color: #000000;
    font-weight: 500;
    @include down(xxl) {
      margin-top: 6.4em;
    }
    @include down(md) {
      margin-top: 4em;
    }
    .text {
      font-size: 2.4em;
      line-height: 1.33;
      letter-spacing: -0.03em;
      @include down(md) {
        font-size: 2em;
        line-height: 1.2;
      }
    }
  }
</style>
