<template>
  <header :class="$style.container" ref="scroll" v-click-outside="closeMenu">
    <ui-button to="/auth" :class="$style.auth">
      <span :class="$style.t">Уже купили? Авторизоваться можно тут!</span>
    </ui-button>
    <div :class="$style.wrap" id="header">
      <div :class="$style.logo"><span :class="$style.text" v-html="logo"></span></div>
      <div :class="$style.nav">
        <div :class="$style.list">
          <ui-button :class="$style.item" v-for="(item, i) in nav" :key="i + '_item'" @click.native="scrollToEl(item.id)">
            <span :class="$style.text">{{ item.title }}</span>
          </ui-button>
        </div>
        <ui-button href="https://t.me/sthtrade" :class="$style.btn">
          <div :class="$style.button">
            <span :class="$style.text">{{ button }}</span>
            <icon-telegram :class="$style.icon"/>
          </div>
        </ui-button>
      </div>
      <div :class="$style.burger">
        <ui-landing-burger :value="isMenuOpen" @click="toggleMenu"/>
      </div>
    </div>
    <transition name="slideDown">
      <div v-show="isMenuOpen" :class="$style.menu">
        <div :class="$style.list">
          <ui-button :class="$style.item" v-for="(item, i) in nav" :key="i + '_item'" @click.native="onClickMobile(item.id)">
            <span :class="$style.text">{{ item.title }}</span>
          </ui-button>
        </div>
      </div>
    </transition>
  </header>
</template>

<script>
  import IconTelegram from '~/components/icons/telegram'
  import UiButton from '~/components/ui/button'
  import UiLandingBurger from '~/components/ui/burger/landing-burger'

  export default {
    name: 'MainHeader',
    components: {
      UiLandingBurger,
      UiButton,
      IconTelegram
    },
    data() {
      return {
        isMenuOpen: false,
        logo: 'start <span>the</span> history',
        nav: [
          { title: 'Что внутри', id: 'inside' },
          { title: 'Чему научитесь', id: 'learn' },
          { title: 'Преимущества', id: 'about' },
          { title: 'Отзывы', id: 'reviews' },
          { title: 'Вопросы', id: 'faq' },
          { title: 'Купить', id: 'buy' }
        ],
        button: 'Написать в телеграм'
      }
    },
    methods: {
      toggleMenu() {
        this.isMenuOpen = !this.isMenuOpen
        this.$scroll.lock(false, this.$refs.scroll)
        if (this.isMenuOpen === true) {
          this.$scroll.lock(true, this.$refs.scroll)
        }
      },
      closeMenu() {
        this.isMenuOpen = false
        this.$scroll.lock(false, this.$refs.scroll)
      },
      scrollToEl(id) {
        const header = document.getElementById('header')
        const headerHeight = header.offsetHeight
        this.$scroll.scrollTo({ y: document.getElementById(id).getBoundingClientRect().top - headerHeight, duration: 1000 })
      },
      onClickMobile(id) {
        this.scrollToEl(id)
        this.closeMenu()
      }
    },
    mounted() {
      window.addEventListener('resize', this.closeMenu)
    }
  }
</script>

<style lang="scss" module>
  .container {
    position: sticky;
    top: 0;
    width: 100%;
    z-index: 10;
    @include down(md) {
      justify-content: space-between;
    }
  }
  .wrap {
    display: flex;
    align-items: center;
    color: #FFFFFF;
    background-color: #191919;
    border-bottom: 1px solid #505050;
    padding: 0 var(--root-layout-offset);
    height: var(--root-main-header-height);
    z-index: 10;
  }
  .logo {
    text-transform: uppercase;
    font-weight: bold;
    padding-right: 4.8em;
    .text {
      font-size: 1.8em;
      line-height: 0.96;
      letter-spacing: -0.01em;
      white-space: nowrap;
      span {
        color: #6D6D6D;
      }
    }
  }
  .nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    height: 100%;
    padding-left: 4.8em;
    border-left: 1px solid #505050;
    @include down(md) {
      display: none;
    }
    .text {
      font-size: 1.6em;
      line-height: 0.96;
      letter-spacing: -0.01em;
    }
  }
  .list {
    display: flex;
    align-items: center;
    @include down(xxl) {
      display: none;
    }
  }
  .item {
    font-weight: 500;
    &:not(:last-child) {
      margin-right: 3.2em;
    }
  }
  .btn {
    margin-left: auto;
  }
  .button {
    height: 6em;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 2.4em;
    background: rgba(255, 255, 255, 0.2);
    border-radius: 1.2em;
    .text {
      font-weight: 500;
      font-size: 1.6em;
      line-height: 0.96;
      letter-spacing: -0.01em;
    }
    .icon {
      width: 2.4em;
      height: 2.4em;
      margin-left: 2.4em;
    }
  }
  .burger {
    height: 100%;
    padding-left: 2.4em;
    margin-left: 2.4em;
    border-left: 1px solid #505050;
    display: none;
    align-items: center;
    @include down(xxl) {
      display: flex;
    }
    @include down(md) {
      margin-left: auto;
      padding-right: .8em;
    }
  }
  .menu {
    position: absolute;
    top: var(--root-main-header-height);
    left: 0;
    width: 100%;
    z-index: -1;
    background: rgba(0, 0, 0, 0.35);
    box-shadow: inset 0 0 68px rgba(255, 255, 255, 0.05);
    backdrop-filter: blur(10px);
    color: #FFFFFF;
    //background-color: #191919;
    .list {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
    }
    .item {
      padding: 3.2em;
      border-bottom: 1px solid #AEAEAE;
      font-weight: 500;
      width: 100%;
      .text {
        font-size: 2.4em;
        line-height: 1.08;
        letter-spacing: -0.03em;
      }
    }
  }

  .auth {
    color: #FFFFFF;
    background-color: #E47138;
    border-bottom: 1px solid #505050;
    padding: 0.8em var(--root-layout-offset);
    display: flex;
    align-items: center;
    justify-content: center;
    .t {
      font-size: 1.4em;
    }
  }
</style>
