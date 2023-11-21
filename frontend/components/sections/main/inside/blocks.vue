<template>
  <div :class="$style.grid">
    <div :class="[$style.block, $style.block_1]" data-aos="fade-right">
      <div :class="$style.column">
        <blocks-title :class="$style.title" :text="block1.title" />
        <icon-graphic :class="$style.graphic"/>
        <icon-graphic-mob :class="[$style.graphic, $style.graphic_mob]" />
      </div>
      <blocks-analyze :list="block1.list"/>
    </div>

    <div :class="[$style.block, $style.block_2, $style.column]" data-aos="fade">
      <blocks-title :class="$style.title" :text="block2.title" />
      <div :class="$style.tests">
        <icon-positive-test :class="$style.test_1"/>
        <icon-negative-test :class="$style.test_2"/>
      </div>
      <blocks-description :class="$style.paragraph" :text="block2.text" />
    </div>

    <div :class="[$style.block, $style.block_3]" data-aos="fade-left">
      <div :class="$style.top">
        <blocks-title :class="$style.title" :text="block3.title" />
        <blocks-description :text="block3.text" />
      </div>
      <div>
        <blocks-bots :bots="block3.bots"/>
      </div>
    </div>

    <div :class="[$style.block, $style.block_4, $style.column]" data-aos="fade-right">
      <div>
        <blocks-title :class="$style.title" :text="block4.title" />
        <blocks-description :text="block4.text" />
      </div>
      <div :class="$style.row">
        <div :class="$style.column">
          <img :class="[$style.image, $style.image_1]" alt="" src="@/assets/images/main/logo_1.png">
          <img :class="[$style.image, $style.image_2]" alt="" src="@/assets/images/main/logo_2.png">
        </div>
        <div :class="$style.column">
          <img :class="[$style.image, $style.image_3]" alt="" src="@/assets/images/main/logo_3.png">
          <img :class="[$style.image, $style.image_4]" alt="" src="@/assets/images/main/logo_4.png">
        </div>
      </div>
    </div>

    <div :class="[$style.block, $style.block_5, $style.column]" data-aos="fade-up">
      <div>
        <blocks-title :class="$style.title" :text="block5.title" />
        <blocks-description :text="block5.text" />
      </div>
      <div :class="$style.bottom">
        <img
          :src="block5.image"
          :class="$style.image"
        />
        <common-bordered-text :class="$style.bordered" :text="block5.bordered" />
      </div>
    </div>

    <div :class="[$style.block, $style.block_6, $style.column]" data-aos="fade-left">
      <blocks-title :class="$style.title" :text="block6.title" />
      <blocks-description :text="block6.text" />
    </div>
  </div>
</template>

<script>
import IconGraphic from '~/components/icons/graphic'
import CommonBorderedText from '~/components/common/bordered-text'
import BlocksBots from '~/components/sections/main/inside/bots'
import BlocksTitle from '~/components/sections/main/inside/title'
import IconPositiveTest from '~/components/icons/positive-test'
import IconNegativeTest from '~/components/icons/negative-test'
import BlocksDescription from '~/components/sections/main/inside/description'
import BlocksAnalyze from '~/components/sections/main/inside/analyze'
import IconGraphicMob from '~/components/icons/graphic_mob'
export default {
  name: 'InsideBlocks',
  components: {
    IconGraphicMob,
    BlocksAnalyze,
    BlocksDescription,
    IconNegativeTest,
    IconPositiveTest,
    BlocksTitle,
    BlocksBots,
    CommonBorderedText,
    IconGraphic
  },
  data() {
    return {
      block1: {
        title: "Обучение<br>анализу",
        list: [
          { title: "технический", text: "индикаторный, графический и свечной" },
          { title: "фундаментальный", text: "стандартный и макроэкономический" },
          { title: "волновой анализ" },
          { title: "временной анализ графика" },
          { title: "психология инвестирования" },
          { title: "определение быстрой коррекции" },
          { title: "определение глобальной коррекции" }
        ]
      },
      block2: { title: "Тестирование", text: "После каждого урока проходит автоматическое тестирование и видео по теме для полного усвоения материала" },
      block3: {
        title: "Собственные боты",
        text: "Сэкономят вам сотни часов поиска хороших сделок. На основе заданных функций, они проводят анализ графика, ищут по связкам точки входа и выхода и передают информацию вам.",
        bots: [
          {
            image: require('@/assets/images/bots/bot-1.svg'),
            title: "Выбор готового портфеля",
            message: "По вашему запросу выдаёт всю информацию по компании"
          },
          {
            image: require('@/assets/images/bots/bot-2.svg'),
            title: "Стратегия (1)",
            message: "Анализирует график по связке 1 и выдаёт все \"сигналы\" вам"
          },
          {
            image: require('@/assets/images/bots/bot-3.svg'),
            title: "Стратегия (2)",
            message: "Анализирует график по связке 2 и выдаёт все \"сигналы\" вам"
          },
          {
            image: require('@/assets/images/bots/bot-4.svg'),
            title: "Временной анализ (скоро будет)",
            message: "Бот анализирует график по трендовой торговле и временному анализу"
          }
        ]
      },
      block4: { title: "Новостной портал", text: "Отбирает важные новости с американских источников" },
      block5: {
        title: "Наша личная обучающая платформа",
        text: "Удобный и мобильный интерфейс со шкалами прогресса, обозначением пройденных тем и большим количеством других значимых функций",
        image: require('@/assets/images/main/notebook.png'),
        bordered: "Будет доступна для вас вечно"
      },
      block6: {
        title: "Сервис<br>для анализа",
        text: "Собственный сервис для быстрого анализа компаний - при вводе нужного тикера появляется вся необходимая информация, включая данные Т.А. и Ф.А."
      }
    }
  }
}
</script>

<style lang="scss" module>
  .grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 1.6em;
    @include down(xxl) {
      grid-template-columns: repeat(2, 1fr);
      grid-template-rows: auto;
    }
    @include down(md) {
      grid-template-columns: 1fr;
    }
  }
  .block {
    background: #F4F4F4;
    border-radius: 2.5em;
  }

  .column {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  .row {
    display: flex;
  }
  .block_1 {
    grid-column: 1 / 3;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 1.6em;
    @include down(md) {
      grid-template-columns: 1fr;
      grid-column: 1 / -1;
      grid-gap: 0;
    }
    .title {
      padding: 2.4em;
      @include down(md) {
        margin-bottom: 0;
      }
    }
    .graphic {
      @include down(xxl) {
        height: 100%;
        width: 100%;
        padding: 8em 8em 0 0
      }
      @include down(md) {
        display: none;
      }
      &_mob {
        display: none;
        @include down(md) {
          display: block;
          padding: 0;
        }
      }
    }
  }
  .block_2 {
    padding: 2.4em;
    .tests {
      display: flex;
      flex-direction: column;
    }
    .test_1 {
      margin-bottom: 1.6em;
      width: 24.9em;
      height: 2.4em;
      @include down(xxl) {
        margin-top: 1.6em;
      }
    }
    .test_2 {
      width: 19.7em;
      height: 2.4em;
    }
    .paragraph {
      @include down(xxl) {
        margin-top: 3.2em;
      }
    }
  }
  .block_3 {
    grid-row: span 2;
    display: grid;
    grid-template-rows: 1fr auto;
    grid-gap: 1.6em;
    @include down(xxl) {
      grid-gap: .8em;
    }
    @include down(md) {
      grid-template-rows: auto;
    }
    .top {
      padding: 2.4em;
    }
  }
  .block_4 {
    padding: 2.4em;
    grid-row: span 2;
    @include down(md) {
      grid-row: span 1;
    }
    .row {
      margin-top: 2.4em;
      @include down(md) {
        flex-direction: column;
      }
      .column {
        justify-content: flex-end;
        width: 100%;
        @include down(md) {
          flex-direction: row;
          &:first-child {
            justify-content: flex-start;
          }
          &:last-child {
            flex-direction: row-reverse;
            align-items: flex-end;
          }
        }
      }
    }
    .image {
      display: block;
      &_1 {
        width: 10em;
        height: 10em;
        margin-bottom: 6em;
        @include down(md) {
          margin-bottom: 0;
          margin-right: 1em;
        }
      }
      &_2 {
        width: 12em;
        height: 12em;
        margin-bottom: 3.2em;
        @include down(md) {
          margin-bottom: 0;
          width: 8em;
          height: 8em;
        }
      }
      &_3 {
        width: 12em;
        height: 12em;
        margin-bottom: 3.5em;
        @include down(md) {
          margin-bottom: 0;
          margin-top: -3.5em;
        }
      }
      &_4 {
        width: 8em;
        height: 8em;
        margin-left: auto;
        @include down(xxl) {
          margin-right: 3.2em;
        }
        @include down(md) {
          margin-right: 2.7em;
        }
      }
    }
  }
  .block_5 {
    grid-row: span 2;
    grid-column: span 2;
    padding: 3.2em;
    text-align: center;
    img {
      width: 100%;
    }
    @include down(md) {
      grid-column: span 1;
      grid-row: span 1;
    }
    .bordered {
      margin-top: 3.2em;
      font-weight: 400;
      color: #525252;
    }
    .bottom {
      margin-top: 9em;
      @include down(xxl) {
        margin-top: 5.7em;
      }
      @include down(md) {
        margin-top: 3.2em;
      }
    }
  }
  .block_6 {
    padding: 2.4em;
    @include down(xxl) {
      grid-column: 2 / 3;
      grid-row: 4 / 5;
    }
    @include down(md) {
      grid-column: 1 / -1;
      grid-row: 6 / 7;
    }
    .title {
      @include down(xxl) {
        margin-bottom: 8em;
      }
      @include down(md) {
        margin-bottom: 2.4em;
      }
    }
  }
</style>
