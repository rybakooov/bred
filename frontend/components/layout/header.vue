<template>
  <header :class="[$style.container, {[$style.container_onMain]: onMain}]">
    <ui-button :to="!onMain && $auth.loggedIn ? '/profile' : null" :class="$style.logo" :tag="!onMain && $auth.loggedIn ? 'a' : 'span'">
      <template #before>
        <icon-logo :class="$style.icon" />
      </template>
      <span :class="$style.t">
        Go<span>Trade</span>
      </span>
    </ui-button>

    <template v-if="!onMain && $auth.loggedIn">
      <nav :class="$style.nav">
        <ui-button
          v-for="link in nav"
          :key="link.title"
          :href="link.href"
          :to="link.to"
          ref="link"
          :class="$style.link"
        >
          <span :class="$style.t">{{ link.title }}</span>
        </ui-button>
        <span :class="$style.slider" ref="slider" :style="sliderStyle" />
      </nav>
      <div :class="$style.profile" @click="onClickProfile">
        <div :class="$style.avatar">
          <p :class="$style.initials"><span :class="$style.text">{{ initialies }}</span></p>
        </div>
        <p :class="$style.name"><span :class="$style.text">{{ name }}</span></p>
        <svg :class="$style.icon" width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M7.99999 8.11467L6.11466 6.22867L5.17133 7.17133L7.99999 10L10.8287 7.17133L9.88533 6.22867L7.99999 8.11467Z" fill="#505050"/>
        </svg>
        <transition name="slideDown">
          <div :class="$style.modal" v-if="isProfileOpen" v-click-outside="onClickOutside">
            <ui-button :class="$style.menuItem" to="/profile/edit"><span :class="$style.text">Мой профиль</span></ui-button>
            <ui-button :class="[$style.menuItem, $style.exit]" @click.native="logout">
              <icon-exit :class="$style.icon"/>
              <span :class="$style.text">Выйти</span>
            </ui-button>
          </div>
        </transition>
      </div>
    </template>
  </header>
</template>

<script>
  import vClickOutside from 'v-click-outside'
  import UiButton from '~/components/ui/button'
  import IconLogo from '~/components/icons/logo'
  import IconExit from '~/components/icons/exit'
  import user from '~/mixins/user'

  export default {
    name: 'LayoutHeader',
    components: {
      IconExit,
      IconLogo,
      UiButton
    },
    mixins: [
      user()
    ],
    data() {
      return {
        nav: [{
          title: 'Курс',
          to: '/profile'
        }, {
          title: 'Выбор готового портфеля',
          href: 'https://t.me//BeWhale_bot'
        }, {
          title: 'Telegram',
          href: 'https://t.me//gotradehelp'
        }, {
          title: 'Канал',
          href: 'https://t.me/+bMJN5S5ADrNiNzUy'
        }],
        isProfileOpen: false
      }
    },
    computed: {
      route() {
        return this.$route
      },
      sliderStyle() {
        return {
          transform: ``,
          width: ``
        }
      },
      onMain() {
        return this.route.path === '/auth'
      }
    },
    directives: {
      clickOutside: vClickOutside.directive
    },
    methods: {
      onClickProfile() {
        this.isProfileOpen = !this.isProfileOpen
      },
      logout() {
        const rememberExpires = this.$auth.$storage.getCookie('remember_expires')
        if (rememberExpires) {
          this.$auth.options.cookie.options.expires = null
        }
        this.$auth.logout()
        if (!this.$auth.loggedIn) {
          this.$router.push('/auth')
        }
      },
      onClickOutside () {
        this.isProfileOpen = false
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    padding: 0 var(--root-layout-offset);
    height: var(--root-header-height);
    display: flex;
    position: sticky;
    top: 0;
    width: 100%;
    z-index: 10;
    background-color: var(--root-color-base-100);
    //@media screen and (min-width: 768) {

    //}
    @include down(md) {
      display: none;
    }
    &:after {
      content: '';
      display: block;
      position: absolute;
      left: var(--root-layout-offset);
      bottom: 0;
      width: calc(100% - var(--root-layout-offset) * 2);
      background-color: var(--root-color-base-300);
      height: 1px;
      z-index: -1;
    }
    &_onMain {
      &:after {
        display: none;
      }
    }
  }
  .logo {
    font-weight: 600;
    display: flex;
    align-items: center;
    .icon {
      margin-right: 1em;
    }
    .t {
      font-family: var(--root-font-family-logo);
      font-size: 2em;
      line-height: 1;
      span {
        color: var(--root-color-base-500);
      }
    }
  }

  .info {
    margin-right: auto;
    border-left: 1px solid var(--root-color-base-300);
    margin-left: 3.2em;
    padding-left: 3.2em;
    align-self: center;
    display: flex;
  }
  .index {
    & + & {
      margin-left: 3.2em;
    }
    .title {
      color: var(--root-color-base-500);
      margin-bottom: 0.2em;
      .t {
        font-size: 1.2em;
        line-height: 1.17;
      }
    }
    .row {
      display: flex;
      align-items: center;
    }
    .currentValue {
      font-family: var(--root-font-family-header);
      font-weight: 500;
      .t {
        font-size: 1.4em;
        line-height: 1.14;
      }
    }
    .icon {
      transform-origin: center;
      color: var(--root-color-green);
      margin: 0 0.4em 0 0.8em;
      display: block;
      &.top {
        color: var(--root-color-blue);
        transform: rotate(180deg);
      }
    }
    .change {
      color: var(--root-color-green);
      &.top {
        color: var(--root-color-blue);
      }
      .t {
        font-size: 1.4em;
        line-height: 1.14;
      }
    }
  }

  .nav {
    margin-left: auto;
    position: relative;
  }

  .link {
    height: 100%;
    display: inline-flex;
    align-items: center;
    color: var(--root-color-base-700);
    position: relative;
    &:hover {
      color: var(--root-color-base-1000);
    }
    &:global(.nuxt-link-exact-active):after {
      content: '';
      border-bottom: 1px solid var(--root-color-blue-500);
      position: absolute;
      width: 100%;
      bottom: 0;
      left: 0;
    }
    & + & {
      margin-left: 3.2em;
    }
    .t {
      font-size: 1.6em;
    }
  }

  .slider {
    position: absolute;
    bottom: 0;
    left: 0;
    height: 1px;
    background-color: var(--root-color-blue-500);
  }

  .profile {
    display: flex;
    align-self: center;
    align-items: center;
    justify-content: flex-start;
    padding-left: 3.2em;
    margin-left: 3.2em;
    border-left: 1px solid var(--root-color-base-300);
    position: relative;
    cursor: pointer;
    .icon {
      width: 1.6em;
      height: 1.6em;
      margin-top: .2em;
    }
  }
  .avatar {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 3.2em;
    width: 3.2em;
    border-radius: 50%;
    background-color: var(--root-color-blue-100);
    color: var(--root-color-blue-500);
  }
  .initials {
    text-transform: uppercase;
    font-weight: 500;
    font-family: var(--root-font-family-header);
    .text {
      font-size: 1.3em;
      line-height: 1;
    }
  }
  .name {
    margin-left: .8em;
    .text {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }
  .modal {
    position: absolute;
    top: calc(100% + .5em);
    right: 0;
    border-radius: .8em;
    padding: 0.8em 0;
    background: var(--root-color-base-0);
    border: 1px solid var(--root-color-base-200);
    width: 12.8em;
  }
  .menuItem {
    white-space: nowrap;
    padding: 0.8em 1.6em;
    width: 100%;
    color: var(--root-color-base-700);
    justify-content: flex-start;
    &:hover {
      background-color: var(--root-color-base-100);
    }
    .text {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }
  .exit {
    color: var(--root-color-blue);
    & > span {
      display: flex;
      align-items: center;
      justify-content: flex-start;
    }
    &:hover {
      background-color: #FDEEEE;
    }
    .icon {
      display: block;
      margin-right: .4em;
      margin-top: 0;
    }
  }
</style>
