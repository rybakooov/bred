<template>
  <section :class="$style.container" id="faq">
    <h1 :class="$style.title" data-aos="zoom-in"><span :class="$style.text" v-html="'Часто <br>задаваемые <br>вопросы'"></span></h1>
    <common-accordeon :class="$style.accordeon" :source="accordeon" icon="#F4F4F4" :font-style="fontStyle"/>
  </section>
</template>

<script>
import CommonAccordeon from '~/components/common/accordeon/index'
export default {
  name: 'MainFaq',
  components: { CommonAccordeon },
  data() {
    return {
      accordeon: [
        {
          title: "Я получу весь функционал за единоразовую плату?",
          text: "Да, конечно!"
        },
        {
          title: "Это даётся на время?",
          text: "Вы получаете обучение, доступ к платформе и остальным функциям навсегда"
        },
        {
          title: "Могу ли я купить сейчас, а приступить позже?",
          text: "Конечно, вас никто и никуда не торопит"
        },
        {
          title: "Если я новичок, мне это подойдёт?",
          text: "Да, курс рассчитан и для тех, кто не умеет торговать и для тех, кто уже что-то понимает"
        },
        {
          title: "Нужно тратить много времени?",
          text: "Вас никто не торопит, право ваше"
        },
        {
          title: "Если я что-то не пойму, мне подскажут?",
          text: "Да, вы будете обращаться лично ко мне и я отвечу на ваш вопрос"
        }
      ]
    }
  },
  computed: {
    fontStyle() {
      return {
        fontSize: '2em',
        fontWeight: 450,
        lineHeight: 1.4,
        letterSpacing: '-0.03em'
      }
    }
  }
}
</script>

<style lang="scss" module>
  .container {
    display: flex;
    justify-content: space-between;
    padding: 0 var(--root-layout-offset);
    @include down(xxl) {
      flex-direction: column;
    }
  }
  .title {
    font-weight: 500;
    color: #000000;
    @include down(xxl) {
      margin-bottom: 3.2em;
    }
    .text {
      font-size: 6.4em;
      line-height: 1;
      letter-spacing: -0.03em;
      br {
        @include down(xxl) {
          display: none;
        }
        @include down(md) {
          display: block;
        }
      }
      @include down(xxl) {
        font-size: 3em;
        line-height: 1.07;
      }
    }
  }
  .accordeon {
    max-width: 65.8em;
    width: 100%;
    border-top: 1px solid #D7D7D7;
    @include down(xxl) {
      max-width: none;
    }
  }
</style>
