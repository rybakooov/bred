<template>
  <header :class="$style.container">
    <div :class="$style.avatar">
      <span :class="$style.t">{{ initialies }}</span>
    </div>
    <div :class="$style.info">
      <p :class="$style.name" v-if="fullName"><span :class="$style.t">{{ fullName }}</span></p>
      <p :class="$style.email" v-if="user.email"><span :class="$style.t">{{ user.email }}</span></p>
    </div>
    <ui-button :class="$style.logout" @click.native="logout">
      <span :class="$style.content">
        <icon-exit :class="$style.icon" />
        <span :class="$style.t">Выход</span>
      </span>
    </ui-button>
  </header>
</template>

<script>
  import UiButton from '~/components/ui/button'
  import IconExit from '~/components/icons/exit'
  import user from '~/mixins/user'

  export default {
    name: 'SectionProfileEditHeader',
    components: {
      IconExit,
      UiButton
    },
    mixins: [
      user()
    ],
    methods: {
      logout() {
        const rememberExpires = this.$auth.$storage.getCookie('remember_expires')
        if (rememberExpires) {
          this.$auth.options.cookie.options.expires = null
        }
        this.$auth.logout()
        if (!this.$auth.loggedIn) {
          this.$router.push('/')
        }
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    display: flex;
    align-items: center;
    @include down(md) {
      flex-direction: column;
    }
  }
  .avatar {
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 8.8em;
    height: 8.8em;
    background-color: var(--root-color-blue-100);
    font-weight: 500;
    font-family: var(--root-font-family-header);
    margin-right: 2.4em;
    text-transform: uppercase;
    @include down(md) {
      margin-right: 0;
      margin-bottom: 1.2em;
    }
    .t {
      font-size: 3.6em;
      line-height: 1.06;
      color: var(--root-color-blue-500);
    }
  }
  .info {
    .name {
      margin-bottom: 0.8em;
      font-weight: 500;
      font-family: var(--root-font-family-header);
      @include down(md) {
        text-align: center;
      }
      .t {
        font-size: 3.6em;
        line-height: 1.06;
        @include down(lg) {
          font-size: 2.4em;
          line-height: 1.08;
        }
      }
    }
    .email {
      color: var(--root-color-base-400);
      @include down(md) {
        text-align: center;
      }
      .t {
        font-size: 1.6em;
        line-height: 1.12;
      }
    }
  }
  .logout {
    margin-left: auto;
    color: var(--root-color-blue);
    @include down(md) {
      display: none;
    }
    .content {
      display: flex;
      align-items: center;
    }
    .icon {
      width: 1.6em;
      height: auto;
      display: block;
      margin-right: 0.8em;
    }
    .t {
      color: var(--root-color-blue);
      font-size: 1.6em;
      line-height: 1.12;
    }
  }
</style>
