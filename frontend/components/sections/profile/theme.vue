<template>
  <article :class="$style.container">
    <div :class="$style.row">
      <div :class="$style.imgbox" v-if="image">
        <img :src="image" alt="Lesson 1">
      </div>
      <div :class="$style.content">
        <div :class="$style.completed" v-if="completed">
          <icon-rounded-mark :class="$style.icon" />
          <span :class="$style.t">Пройдено</span>
        </div>
        <p :class="$style.title">
          <span :class="$style.t">{{ title }}</span>
        </p>
        <div :class="$style.stats">
          <span :class="$style.item"><span :class="$style.t">{{ $tc('lessons', lessons) }}</span></span>
        </div>
      </div>
    </div>
    <div :class="$style.progress">
      <span :class="$style.line" :style="{ width: progress + '%'}"></span>
    </div>
    <ui-button :class="$style.link" />
  </article>
</template>

<i18n lang="i18n">
{
  "ru": {
    "lessons": "0 уроков | {n} урок | {n} урока | {n} уроков"
  }
}
</i18n>

<script>
  import UiButton from '~/components/ui/button'
  import IconRoundedMark from '~/components/icons/rounded-mark'

  export default {
    name: 'SectionProfileTheme',
    components: {
      IconRoundedMark,
      UiButton
    },
    props: {
      progress: {
        type: Number,
        default: 0
      },
      title: {
        type: String,
        default: ''
      },
      completed: {
        type: Boolean,
        default: false
      },
      lessons: {
        type: Number,
        default: 0
      },
      themes: {
        type: Number,
        default: 0
      },
      image: {
        type: String,
        default: ''
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    background-color: var(--root-color-base-0);
    border: 1px solid var(--root-color-base-200);
    border-radius: 1.2em;
    position: relative;
    display: flex;
    flex-direction: column;
    min-height: 18.4em;
    &:hover {
      border-color: var(--root-color-blue-300);
    }
  }
  .row {
    display: flex;
    padding: 2.4em 2.4em 0;
    width: 100%;
    flex: 1;
    @include down(md) {
      padding: 1.6em 1.6em 0;
    }
  }
  .completed {
    display: flex;
    align-items: center;
    margin-bottom: 1em;
    .icon {
      color: var(--root-color-red-500);
      margin-right: 1em;
    }
    .t {
      color: var(--root-color-base-400);
      font-size: 1.4em;
      line-height: 1.14;
    }
  }

  .content {
    display: flex;
    flex-direction: column;
  }

  .title {
    font-weight: 500;
    font-family: var(--root-font-family-header);
    //word-break: break-all;
    .t {
      font-size: 1.6em;
      line-height: 1;
    }
  }

  .stats {
    margin-top: auto;
    display: flex;
    align-items: center;
    .item {
      &:not(:last-child) {
        display: inline-flex;
        align-items: center;
        &:after {
          font-size: 1.4em;
          line-height: 1.14;
          display: inline-block;
          content: '•';
          margin: 0 0.8rem;
          color: var(--root-color-base-400);
        }
      }
      .t {
        font-size: 1.4em;
        line-height: 1.14;
        color: var(--root-color-base-700);
      }
    }
  }

  .link {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
  }

  .progress {
    margin: 1.6em 2.4em;
    position: relative;
    border-radius: 0.8em;
    overflow: hidden;
    height: 1em;
    width: calc(100% - 4.8em);
    background-color: var(--root-color-base-200);
    @include down(md) {
      margin: 1.6em 1.6em;
    }
    .line {
      position: absolute;
      left: 0;
      top: 0;
      height: 100%;
      display: block;
      background-color: var(--root-color-blue-500);
    }
  }

  .imgbox {
    height: 11.8em;
    width: 14.2em;
    flex-shrink: 0;
    @include down(lg) {
      width: 11.2em;
    }
    @include down(md) {
      width: 9.2em;
    }
    img {
      width: 100%;
      height: 100%;
      display: block;
      object-fit: contain;
      object-position: center;
    }
  }
</style>
