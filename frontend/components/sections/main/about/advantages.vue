<template>
  <div :class="$style.container">
    <common-bordered-text text="Преимущества" />
    <div :class="$style.wrap">
      <template v-for="(item, i) in blocks">
        <div :key="i + '_item'" :class="$style.item" data-aos="zoom-in" :data-delay="(i + 1) * 200">
          <div :class="$style.header">
            <p :class="$style.title"><span :class="$style.text" v-html="item.title"></span></p>
            <p :class="$style.num"><span :class="$style.text">{{ "0" + ((+i) + 1) }}</span></p>
          </div>
          <p :class="$style.desc"><span :class="$style.text" v-html="item.text"></span></p>
        </div>
      </template>
    </div>
    <div :class="$style.bottom">
      <p :class="$style.left" data-aos="fade-right"><span :class="$style.text" v-html="left"></span></p>
      <p :class="$style.right" data-aos="fade-left"><span :class="$style.text" v-html="right"></span></p>
    </div>
  </div>
</template>

<script>
import CommonBorderedText from '~/components/common/bordered-text'
export default {
  name: 'AboutAdvantages',
  components: {
    CommonBorderedText
  },
  data() {
    return {
      blocks: [
        {
          title: "Программа",
          text: "Полная и проработанная программа обучения с закреплением полученной информации"
        },
        {
          title: "Поддержка",
          text: "Поддержка по любому вопросу"
        },
        {
          title: "Анализ",
          text: "Изучение 5 типов анализа"
        },
        {
          title: "Собственная <br>разработка",
          text: "Собственные разработки: платформа <br>для обучения, боты, новостной портал,<br> сервис быстрого анализа"
        },
        {
          title: "Дополнительные <br>материалы",
          text: "Дополнение материала без доплаты за него"
        },
        {
          title: "Вечный доступ",
          text: "Вечный доступ ко всем <br>функциям и самому обучению"
        }
      ],
      left: "За смешные деньги вы получите то, на что остальные тратят сотни тысяч и тонну времени",
      right: "И, возможно, для многих самое главное - цена. Я всегда демократичен и моя цель - дать людям то, в чем они нуждаются за минимальную плату. Не раскрывая всех карт, скажу следующее - цена ниже в 10 раз, чем должна быть"
    }
  }
}
</script>

<style lang="scss" module>
  .container {
    background: #272727;
    color: var(--root-color-base-0)
  }
  .wrap {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: auto;
    grid-gap: 1.6em;
    margin: 3.2em 0 9.6em;
    @include down(xxl) {
      grid-template-columns: repeat(2, 1fr);
      margin: 3.2em 0 8em;
    }
    @include down(md) {
      overflow: auto;
      display: flex;
      margin: 2.4em 0 4em;
    }
  }
  .item {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    height: 24em;
    padding: 2.4em;
    border: 1px solid #4F4F4F;
    border-radius: 1.3em;
    @include down(md) {
      width: 26.4em;
      height: 21.2em;
      flex-shrink: 0;
      background: #2F2F2F;
    }
  }
  .header {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .title {
    font-weight: 500;
    .text {
      font-size: 2em;
      line-height: 1.2;
      letter-spacing: -0.03em;
    }
  }
  .num {
    font-weight: 500;
    .text {
      font-size: 1.6em;
      line-height: 0.96;
      letter-spacing: -0.01em;
      opacity: 0.3;
    }
  }
  .desc {
    .text {
      font-size: 1.6em;
      line-height: 1.32;
      letter-spacing: -0.01em;
      opacity: 0.49;
    }
  }
  .bottom {
    display: flex;
    justify-content: space-between;
    @include down(md) {
      flex-direction: column;
      align-items: center;
      text-align: center;
    }
  }
  .left {
    max-width: 38.5em;
    font-weight: 500;
    margin-right: 3em;
    @include down(xxl) {
      max-width: 30.1em;
    }
    @include down(md) {
      margin-bottom: 4em;
    }
    .text {
      font-size: 2.4em;
      line-height: 1.08;
      letter-spacing: -0.03em;
      @include down(md) {
        font-size: 2em;
        line-height: 1.2;
      }
    }
  }
  .right {
    max-width: 43.2em;
    color: #ACACAC;
    font-weight: 500;
    @include down(xxl) {
      max-width: 35.2em;
    }
    .text {
      font-size: 2em;
      line-height: 1.4;
      letter-spacing: -0.01em;
      @include down(xxl) {
        font-size: 1.6em;
        line-height: 1.5;
      }
    }
  }
</style>
