<template>
  <ui-button :class="[$style.article, $style.link]" v-if="to || href" :to="to" :href="href">
    <span :class="$style.subtitle" v-if="subtitle">
      <span :class="$style.t">{{ subtitle }}</span>
    </span>
    <span :class="$style.title" v-if="title">
      <span :class="$style.t">{{ title }}</span>
    </span>
    <slot />
  </ui-button>
  <article :class="$style.article" v-else>
    <span :class="$style.subtitle" v-if="subtitle">
      <span :class="$style.t">{{ subtitle }}</span>
    </span>
    <span :class="$style.title" v-if="title">
      <span :class="$style.t">{{ title }}</span>
    </span>
    <slot />
  </article>
</template>

<script>
  import UiButton from '~/components/ui/button'
  export default {
    name: 'SectionProfileBlock',
    components: {
      UiButton
    },
    props: {
      to: {
        type: String,
        default: ''
      },
      href: {
        type: String,
        default: ''
      },
      title: {
        type: String,
        default: ''
      },
      subtitle: {
        type: String,
        default: ''
      }
    }
  }
</script>

<style module lang="scss">
  .article {
    padding: 1.6em;
    border: 1px solid var(--root-color-base-200);
    background-color: var(--root-color-base-50);
    border-radius: 1.2em;
    .subtitle {
      display: block;
      margin-bottom: 0.8em;
      color: var(--root-color-base-400);
      .t {
        font-size: 1.4em;
        line-height: 1.14;
      }
    }
    .title {
      display: block;
      font-weight: 500;
      font-family: var(--root-font-family-header);
      margin-bottom: 1.6em;
      .t {
        font-size: 1.6em;
        line-height: 1.12;
      }
    }
  }
  .link {
    justify-content: flex-start;
    text-align: left;
    &:hover {
      border-color: var(--root-color-blue-300);
    }
  }
</style>
