<template>
  <header :class="$style.container">
    <ui-button @click="$router.go(-1)" :class="$style.backBtn">
      <span :class="$style.back">
        <icon-arrow-right-s-line :class="$style.backIcon" />
        <span :class="$style.backText">Назад</span>
      </span>
    </ui-button>
    <div :class="$style.theme">
      <span :class="$style.subtitle">
        <span>Тема</span>
      </span>
      <span :class="$style.name">
        <span>{{ subj }}</span>
      </span>
    </div>
    <h1 :class="$style.title">
      <span :class="$style.t">{{ title }}</span>
    </h1>
  </header>
</template>

<script>
  import UiButton from '~/components/ui/button'
  import IconArrowRightSLine from '~/components/icons/arrow-right-s-line'
  import { mapState } from 'vuex'

  export default {
    name: 'SectionLessonHeader',
    components: {
      IconArrowRightSLine,
      UiButton
    },
    props: {
      title: {
        type: String,
        default: ''
      }
    },
    computed: {
      ...mapState('subjects', ['subject']),
      ...mapState('lessons', ['lesson']),
      subj() {
        return this.subject?.name || this.lesson?.subject.name
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    padding: 6.4em var(--root-layout-offset) 3.2em;
    display: grid;
    grid-template-columns: 22.4em 1fr 22.4em;
    align-items: flex-start;
    @include down(lg) {
      padding: 4em var(--root-layout-offset) 2.4em;
      grid-template-columns: 21.4em 1fr 21.4em;
    }
    @include down(md) {
      padding: 2.4em var(--root-layout-offset) 2.4em;
      grid-template-columns: 4.4em 1fr 4.4em;
    }
  }

  .back {
    color: var(--root-color-base-700);
    display: flex;
    align-items: center;
    @include down(md) {
      justify-content: center;
      width: 2.4em;
      height: 2.4em;
      border-radius: 50%;
      background-color: #fff;
    }
    &Btn {
      justify-content: flex-start;
    }
    &Icon {
      transform-origin: center;
      transform: rotate(180deg);
      margin-right: 0.4em;
      width: 1.6em;
      height: auto;
      display: block;
      @include down(md) {
        margin-right: 0;
      }
    }
    &Text {
      font-size: 1.4em;
      line-height: 1.14;
      @include down(md) {
        display: none;
      }
    }
  }

  .theme {
    //display: flex;
    @include down(lg) {
      justify-content: center;
    }
    & > span > span {
      font-size: 1.4em;
      line-height: 1.14;
    }
  }

  .subtitle {
    color: var(--root-color-base-700);
    margin-right: 0.8rem;
    font-size: 1.4em;
    line-height: 1.14;
  }

  .name {
    color: var(--root-color-blue-500);
    font-size: 1.4em;
    line-height: 1.14;
  }

  .title {
    font-weight: 500;
    grid-column: 2 / 3;
    font-family: var(--root-font-family-header);
    margin-top: 1.6em;
    // word-break: break-all;
    @include down(lg) {
      grid-column: 1 / -1;
      text-align: center;
      margin-top: 1.2em;
    }
    .t {
      font-size: 3.6em;
      line-height: 1.06;
      @include down(lg) {
        font-size: 2.4em;
        line-height: 1.08;
        color: #000000;
      }
      @include down(md) {
        font-size: 2em;
        line-height: 1.1;
      }
    }
  }
</style>
