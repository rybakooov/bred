<template>
  <section :class="$style.container">
    <aside :class="$style.aside">
      <div :class="$style.content">
        <h1 :class="$style.title">
          <span :class="$style.t">Привет<span v-if="$auth.loggedIn">, {{ name }}</span> 👋</span>
        </h1>
        <p :class="$style.text">
          <span :class="$style.t">
            Сегодня отличный день, чтобы продолжить обучение, желаем тебе продуктивной работы!
          </span>
        </p>
        <div :class="$style.info">
          <section-profile-block title="5.4 Видео" subtitle="Продолжите обучение" v-if="false">
            <div :class="$style.next">
              <img
                :src="require('@/assets/images/mock/next-video.png')"
                :class="$style.image"
              />
              <span :class="$style.label">
                <span :class="$style.t">24 минуты</span>
              </span>
              <icon-play :class="$style.play" />
            </div>
          </section-profile-block>
          <section-profile-progress />
        </div>
        <profile-news :class="$style.news" />
      </div>
    </aside>
    <profile-themes :class="$style.themes" />
    <div :class="$style.mobTabs">
      <div :class="$style.header">
        <div :class="[$style.title, {[$style.title_active]: isTabOpened}]" @click="onClickThemes"><span :class="$style.t">Темы курса</span></div>
        <div :class="[$style.title, {[$style.title_active]: !isTabOpened}]" @click="onClickNews"><span :class="$style.t">Новости</span></div>
      </div>
      <transition name="fade" mode="out-in">
        <profile-themes v-if="isTabOpened"/>
        <profile-news v-if="!isTabOpened"/>
      </transition>
    </div>
  </section>
</template>

<script>
  import SectionProfileBlock from '~/components/sections/profile/block'
  import IconPlay from '~/components/icons/play'
  import ProfileNews from '~/components/sections/profile/news'
  import ProfileThemes from '~/components/sections/profile/themes'
  import user from '~/mixins/user'
  import SectionProfileProgress from '~/components/sections/profile/progress'

  export default {
    name: 'SectionProfile',
    mixins: [
      user()
    ],
    components: {
      SectionProfileProgress,
      ProfileThemes,
      ProfileNews,
      IconPlay,
      SectionProfileBlock
    },
    data() {
      return {
        isTabOpened: true
      }
    },
    methods: {
      onClickThemes() {
        this.isTabOpened = true
      },
      onClickNews() {
        this.isTabOpened = false
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    padding: 3em var(--root-layout-offset) 0 0;
    display: flex;
    width: 100%;
    @include down(md) {
      flex-direction: column;
      padding: 0;
    }
  }
  .aside {
    background-color: var(--root-color-base-0);
    width: 50.4em;
    flex-shrink: 0;
    border-radius: 0 3.2em 0 0;
    height: calc(100 * var(--vh) - var(--root-header-height) - var(--root-footer-height) - 3em);
    overflow: auto;
    position: sticky;
    top: calc(var(--root-header-height) + 3em);
    @include hide-scrollbar;
    @include down(lg) {
      width: 37.6em;
    }
    @include down(md) {
      width: 100%;
      position: static;
      height: auto;
      border-radius: 0 0 1.6em 1.6em;
    }
    .content {
      padding: 3.2em 3.2em 3.2em var(--root-layout-offset);
      @include down(xxl) {
        padding: 2.4em 1.6em 2.4em var(--root-layout-offset);
      }
    }
    .title {
      font-weight: 500;
      font-family: var(--root-font-family-header);
      .t {
        font-size: 3.6em;
        line-height: 1.06;
        @include down(xxl) {
          font-size: 2.4em;
          line-height: 1.08;
        }
      }
    }
    .text {
      margin-top: 1.6em;
      display: block;
      max-width: 34.7em;
      color: var(--root-color-base-600);
      .t {
        font-size: 1.6em;
        line-height: 1.5;
      }
    }
    .info {
      margin-top: 4em;
      display: grid;
      grid-template-columns: 1fr 1fr;
      grid-gap: 1.6em;
    }
  }
  .themes {
    padding-left: 3.2em;
    padding-top: 1em;
    @include down(xxl) {
      padding-left: 1.6em;
      padding-top: 0;
    }
    @include down(md) {
      display: none;
    }
  }

  .next {
    position: relative;
    .image {
      width: 100%;
      border-radius: 0.8em;
      overflow: hidden;
    }
    .label {
      padding: 0.6em 1.2em;
      border-radius: 0.4em;
      background-color: var(--root-color-base-0);
      position: absolute;
      bottom: 0.8em;
      left: 0.8em;
      .t {
        font-size: 1.4em;
        line-height: 1.14;
      }
    }
    .play {
      color: var(--root-color-base-0);
      position: absolute;
      left: 0.8em;
      top: 0.8em;
    }
  }
  .news {
    margin-top: 4em;
    @include down(md) {
      display: none;
    }
  }

  .mobTabs {
    display: none;
    padding: 0 var(--root-layout-offset) 2.4em;
    @include down(md) {
      display: block;
    }
  }
  .header {
    display: flex;
    margin-top: 2.4em;
    margin-bottom: 1.6em;
    .title {
      font-weight: 500;
      font-family: var(--root-font-family-header);
      color: #C3C3C3;
      &_active {
        color: var(--root-color-base-1000);
      }
      & + .title {
        margin-left: 1.6em;
      }
      .t {
        font-size: 2em;
        line-height: 1.1;
      }
    }
  }
</style>
