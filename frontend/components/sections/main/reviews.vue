<template>
  <section :class="$style.container" id="reviews">
    <div :class="$style.header">
      <p :class="$style.title" data-aos="fade-up"><span :class="$style.text">Отзывы учеников</span></p>
      <div :class="$style.controls" data-aos="zoom-in">
        <icon-arrow-control :class="$style.controls_left" @click.native="prev" />
        <icon-arrow-control :class="$style.controls_right" @click.native="next" />
      </div>
    </div>
    <swiper ref="mySwiper" :options="swiperOption" :class="[$style.line, {[$style.open]: opened}]">
      <swiper-slide v-for="(review, i) in reviews" :key="i + '_review'" :class="$style.slide">
        <div :class="$style.review" data-aos="fade-in" :data-aos-delay="200 * i">
          <div :class="$style.top">
            <div :class="$style.avatar" v-if="review.avatar"><img :src="review.avatar"></div>
            <div>
              <p :class="$style.name"><span :class="$style.text">{{ review.name }}</span></p>
              <p :class="$style.student"><span :class="$style.text">{{ review.student }}</span></p>
            </div>
          </div>
          <p :class="$style.description"><span :class="$style.text" v-html="review.desc" /></p>
          <div :class="$style.button">
            <span :class="$style.text">Оригинал отзыва</span>
            <icon-arrow-control :class="$style.icon" fill="#E47138" color="#F4F4F4" />
            <ui-button :class="$style.absolute" @click.native="$refs.popup.openPopup(review.src)"/>
          </div>
        </div>
      </swiper-slide>
    </swiper>
    <ui-button :class="$style.more" @click.native="opened = true" v-if="!opened">
      <span :class="$style.moreContent">
        <icon-plus :class="$style.icon" />
        <span :class="$style.text">Показать ещё</span>
      </span>
    </ui-button>
    <popup-review ref="popup" />
  </section>
</template>

<script>
import IconArrowControl from '~/components/icons/arrow-control'
import UiButton from '~/components/ui/button'
import IconPlus from '~/components/icons/plus'
import PopupReview from '~/components/popups/review'
export default {
  name: 'MainReviews',
  components: {
    PopupReview,
    IconPlus,
    UiButton,
    IconArrowControl
  },
  data () {
    return {
      opened: false,
      swiperOption: {
        slidesPerView: 'auto',
        spaceBetween: 16
      },
      reviews: [
        {
          name: "Александр",
          student: "Студент курса, 2021 год",
          desc: "Антон, привет. Пользуюсь твоей стратегией и она начинает приносить хороший результат, спасибо тебе огромное! <br><br>Всего за 1 день 14%🔥",
          src: require('~/assets/images/reviews/original-1.jpg'),
          avatar: require('~/assets/images/reviews/avatar-1.jpg')
        },
        {
          name: "sma",
          student: "Студент курса, 2021 год",
          desc: "Сегодня переборол страх и вошёл в сделку на 3к$, на одной сделке отбил весь курс🤭😆☝ <br><br>Антон, спасибо за то, что вселил уверенность и вложил знания🙏",
          src: require('~/assets/images/reviews/original-2.jpg')
        },
        {
          name: "Ваня Чистяков",
          student: "Студент курса, 2021 год",
          desc: "После курса решил немного поторговать в августе, вышло как-то так - 38% прибыли за месяц",
          src: require('~/assets/images/reviews/original-3.jpg'),
          avatar: require('~/assets/images/reviews/avatar-3.jpg')
        },
        {
          name: "Light_of_Orion",
          student: "Студент курса, 2020 год",
          desc: "Антон, привет. Наконец то допрошел видеоформат курса, который наконец-то всё расставил по полочкам, сейчас активно использую связку которую ты рекомендовал. За сегодня уже плюснул благодаря ей +5% к депо, а за июль +63% к общему депо!",
          src: require('~/assets/images/reviews/original-4.jpg'),
          avatar: require('~/assets/images/reviews/avatar-4.jpg')
        },
        {
          name: "Захаров Михаил",
          student: "Студент курса, 2020 год",
          desc: "Первый день на бирже провел по урокам<br>+15% от депозита за день<br>Спасибо <br>Дальше больше💪",
          src: require('~/assets/images/reviews/original-5.jpg'),
          avatar: require('~/assets/images/reviews/avatar-5.jpg')
        }
      ]
    }
  },
  computed: {
    swiper() {
      return this.$refs.mySwiper.$swiper
    }
  },
  methods: {
    next() {
      this.swiper.slideNext()
    },
    prev() {
      this.swiper.slidePrev()
    }
  },
  mounted() {
    if (document.documentElement.offsetWidth < 768) {
      this.swiper.destroy(true, true)
    }
  }
}
</script>

<style lang="scss" module>
  .container {
    padding: 0 var(--root-layout-offset);
    overflow: hidden;
  }
  .header {
    display: flex;
    justify-content: space-between;
    margin-bottom: 3.2em;
    @include down(xxl) {
      margin-bottom: 2.4em;
    }
  }
  .title {
    font-weight: 500;
    .text {
      font-size: 3em;
      line-height: 1.07;
      letter-spacing: -0.03em;
      color: #272727;
    }
  }
  .controls {
    @include down(md) {
      display: none;
    }
    &_left {
      width: 2.4em;
      height: 2.4em;
      cursor: pointer;
    }
    &_right {
      transform: rotate(180deg);
      margin-left: .8em;
      width: 2.4em;
      height: 2.4em;
      cursor: pointer;
    }
  }
  .line {
    display: flex;
    flex-wrap: nowrap;
    margin: 0 calc(-1 * var(--root-layout-offset));
    padding: 0 var(--root-layout-offset);
    @include down(md) {
      flex-direction: column;
      margin: 0;
      padding: 0;
      :global(.swiper-wrapper) {
        display: grid;
      }
    }
  }
  .slide {
    width: 54.4em;
    height: 33em;
    @include down(md) {
      width: 100% !important;
      height: auto;
      &:not(:last-child) {
        margin-bottom: 1.6em;
      }
      &:nth-child(n + 4) {
        display: none;
      }
    }
  }
  .open {
    @include down(md) {
      .slide {
        display: block !important;
      }
    }
  }

  .review {
    padding: 3.2em;
    border-radius: 2.5em;
    background: #F4F4F4;
    @include down(md) {
      box-sizing: border-box;
      width: 100% !important;
      height: auto;
    }
  }
  .top {
    display: flex;
  }
  .avatar {
    margin-right: 1.6em;
    width: 5em;
    height: 5em;
    border-radius: 50%;
    overflow: hidden;
    img {
      width: 100%;
      height: 100%;
      display: block;
      object-fit: cover;
      object-position: center;
    }
  }
  .name {
    color: #000000;
    font-weight: 500;
    margin-bottom: .8em;
    .text {
      font-size: 2em;
      line-height: 1.2;
      letter-spacing: -0.03em;
    }
  }
  .student {
    color: #525252;
    .text {
      font-size: 1.6em;
      line-height: 1.12;
      letter-spacing: -0.01em;
    }
  }
  .description {
    color: #525252;
    font-weight: 450;
    margin-top: 2.4em;
    .text {
      font-size: 1.6em;
      line-height: 1.5;
      letter-spacing: -0.01em;
    }
  }
  .button {
    margin-top: 2.4em;
    color: #000000;
    font-weight: 500;
    display: flex;
    align-items: center;
    position: relative;
    .icon {
      width: 2.4em;
      height: 2.4em;
      transform: rotate(180deg);
      margin-left: .8em;
    }
    .text {
      font-size: 1.6em;
      line-height: 1.12;
      letter-spacing: -0.01em;
    }
    .absolute {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }
  }
  .more {
    display: none;
    @include down(md) {
      display: block;
      margin: 0 auto;
    }
    &Content {
      display: flex;
      justify-content: center;
      align-items: center;
      margin-top: 2.4em;
    }
    .icon {
      margin-right: .8em;
      width: 2.4em;
      height: 2.4em;
    }
    .text {
      font-weight: 450;
      font-size: 1.6em;
      line-height: 1.12;
      letter-spacing: -0.01em;
      color: #505050;
    }
  }
</style>
