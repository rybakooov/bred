<template>
  <header :class="[$style.container, {[$style.container_onMain]: onMain}]" v-click-outside="onClickOutside">
    <ui-button to="/profile/edit" :class="$style.profile" v-if="!onMain && $auth.loggedIn">
      <div :class="$style.avatar">
        <p :class="$style.initials"><span :class="$style.text">{{ initialies }}</span></p>
      </div>
    </ui-button>

    <ui-button :to="!onMain && $auth.loggedIn ? '/profile' : null" :tag="!onMain && $auth.loggedIn ? 'a' : 'span'" :class="[$style.logo, {[$style.logo_full]: onMain || !$auth.loggedIn}]">
      <template #before>
        <icon-logo :class="$style.icon" />
      </template>
      <span :class="$style.t">
        Go<span>Trade</span>
      </span>
    </ui-button>
    <ui-burger v-if="!onMain && $auth.loggedIn" :class="$style.burger" v-model="menuOpen"/>
    <transition name="slideUp">
      <nav v-if="menuOpen" :class="$style.nav">
        <ui-button to="/profile/edit" :class="$style.profileBig">
          <div :class="$style.avatarBig">
            <span :class="$style.t">{{ initialies }}</span>
          </div>
          <div :class="$style.info">
            <p :class="$style.name" v-if="fullName"><span :class="$style.t">{{ fullName }}</span></p>
            <p :class="$style.email" v-if="user.email"><span :class="$style.t">{{ user.email }}</span></p>
          </div>
        </ui-button>
        <ui-button :class="$style.menuItem" v-for="item in menu" :key="item.title" :to="item.to" :href="item.href">
          <span :class="$style.itemContent">
            <span :class="$style.t">{{ item.title }}</span>
            <icon-arrow-right-s-line :class="$style.icon" />
          </span>
        </ui-button>
      </nav>
    </transition>
  </header>
</template>

<script>
  import vClickOutside from 'v-click-outside'
  import UiButton from '~/components/ui/button'
  import IconLogo from '~/components/icons/logo'
  import UiBurger from '~/components/ui/burger'
  import user from '~/mixins/user'
  import IconArrowRightSLine from '~/components/icons/arrow-right-s-line'

  export default {
    name: 'LayoutHeader',
    components: {
      IconArrowRightSLine,
      IconLogo,
      UiButton,
      UiBurger
    },
    mixins: [
      user()
    ],
    data() {
      return {
        menuOpen: false,
        menu: [{
          title: 'Курс',
          to: '/profile'
        }, {
          title: 'Выбор готового портфеля',
          href: ''
        }, {
          title: 'Telegram',
          href: 'https://t.me//gotradehelp'
        }, {
          title: 'Канал',
          href: 'https://t.me/+bMJN5S5ADrNiNzUy'
        }]
      }
    },
    computed: {
      route() {
        return this.$route
      },
      fullRoute() {
        return this.$route.fullPath
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
        this.menuOpen = false
      }
    },
    watch: {
      fullRoute() {
        this.menuOpen = false
      }
    }
  }
</script>

<style module lang="scss">
  .nav {
    z-index: -11;
    position: fixed;
    bottom: var(--root-header-height);
    background: var(--root-color-base-100);
    border-left: 1px solid var(--root-color-base-200);
    border-top: 1px solid var(--root-color-base-200);
    border-right: 1px solid var(--root-color-base-200);
    border-radius: 1.6em 1.6em 0 0;
    padding: 3.2em 1.2em 0.6em;
    width: 100%;
    left: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  .container {
    bottom: 0;
    padding: 0 var(--root-layout-offset);
    height: var(--root-header-height);
    position: sticky;
    border-top: 1px solid #D7D7D7;
    width: 100%;
    z-index: 10;
    background-color: var(--root-color-base-100);
    justify-content: center;
    display: grid !important;
    grid-template-columns: 1fr 2fr 1fr;
    @include up(md) {
      display: none !important;
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
    &_full {
      grid-column: 1 / -1;
    }
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
  .profile {
    display: flex;
    align-self: center;
    justify-content: flex-start;
    position: relative;
    cursor: pointer;
    margin-right: auto;
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
    .text {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }

  .burger {
    margin-left: auto;
  }

  .profileBig {
    align-self: stretch;
    margin-bottom: 3.2em;
    & > span {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
  }

  .avatarBig {
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 6.4em;
    height: 6.4em;
    background-color: var(--root-color-blue-100);
    font-weight: 500;
    font-family: var(--root-font-family-header);
    text-transform: uppercase;
    @include down(md) {
      margin-bottom: 1.2em;
    }
    .t {
      font-size: 2.4em;
      line-height: 1.06;
      color: var(--root-color-blue-500);
    }
  }
  .info {
    .name {
      margin-bottom: 0.8em;
      font-weight: 500;
      font-family: var(--root-font-family-header);
      .t {
        font-size: 2.4em;
        line-height: 1.06;
      }
    }
    .email {
      color: var(--root-color-base-400);
      .t {
        font-size: 1.6em;
        line-height: 1.12;
      }
    }
  }

  .menuItem {
    display: block;
    align-self: stretch;
    border-top: 1px solid var(--root-color-base-200);
    & > span {
      display: block;
      width: 100%;
    }
    .itemContent {
      padding: 1.6em 0;
      width: 100%;
      display: flex;
      justify-content: space-between;
      align-items: center;
      .t {
        color: var(--root-color-base-700);
        font-weight: 500;
        font-family: var(--root-font-family-header);
        font-size: 2em;
        line-height: 1.1;
      }
      .icon {
        color: var(--root-color-base-700);
        width: 2.4em;
        height: auto;
        display: block;
      }
    }
  }
</style>
