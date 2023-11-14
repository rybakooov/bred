<template>
  <div :class="$style.container">
    <h2 :class="$style.title">
      <span :class="$style.t">Дополнительный материал</span>
    </h2>
    <div :class="$style.list">
      <ui-button
        :class="$style.item"
        target="_blank"
        :href="src"
      >
        <span :class="$style.content">
          <span :class="$style.name">{{ name }}</span>
          <span :class="$style.weight" v-if="false">{{ doc.weight }}</span>
          <icon-download :class="$style.icon" />
        </span>
      </ui-button>
    </div>
  </div>
</template>

<script>
  import UiButton from '~/components/ui/button'
  import IconDownload from '~/components/icons/download'

  export default {
    name: 'SectionLessonContentMaterials',
    components: {
      IconDownload,
      UiButton
    },
    props: {
      src: {
        type: String,
        required: true
      },
      name: {
        type: String,
        required: true
      }
    },
    data() {
      return {
        docs: [{
          href: 'https://google.com',
          title: '5.1_Выжимка.pdf',
          weight: '2.1 Mb'
        }, {
          href: 'https://google.com',
          title: '5.2_Хуй.pdf',
          weight: '4.5 Gb'
        }]
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    margin-top: 6.4em;
    @include down(lg) {
      margin-top: 4em;
    }
  }

  .title {
    font-weight: 500;
    font-family: var(--root-font-family-header);
    .t {
      font-size: 2.4em;
      line-height: 1.08;
      @include down(lg) {
        font-size: 2em;
        line-height: 1.1;
      }
      @include down(md) {
        font-size: 1.6em;
        line-height: 1.12;
      }
    }
  }

  .list {
    margin-top: 2.4em;
    width: 100%;
    @include down(lg) {
      margin-top: 1.6em;
    }
    @include down(md) {
      margin-top: 1.2em;
    }
  }
  .item {
    background-color: var(--root-color-base-100);
    border-radius: 0.8em;
    display: block;
    width: 100%;
    border: 1px solid var(--root-color-base-100);
    &:hover {
      border-color: var(--root-color-blue-500);
      .icon {
        color: var(--root-color-blue-500);
      }
      //background-color: var(--root-color-base-300);
    }
    & + & {
      margin-top: 0.8em;
    }
  }
  .content {
    padding: 1.6em;
    display: flex;
    align-items: center;
  }
  .name {
    font-size: 1.4em;
    line-height: 1.14;
    margin-right: auto;
  }
  .weight {
    font-size: 1.4em;
    line-height: 1.14;
    color: var(--root-color-base-900);
  }

  .icon {
    width: 1.6em;
    height: auto;
    display: block;
    margin-left: 0.8em;
    transition: color $transition-duration;
  }
</style>
