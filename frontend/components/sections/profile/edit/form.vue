<template>
  <form @submit.prevent="$emit('submit')" :class="$style.container">
    <p :class="$style.title" v-if="title">
      <span :class="$style.t">{{ title }}</span>
    </p>
    <div :class="$style.grid">
      <slot />
    </div>
    <ui-button :disabled="disabled" theme="red" size="md" type="submit">Сохранить</ui-button>
  </form>
</template>

<script>
  import UiButton from '~/components/ui/button'

  export default {
    name: 'SectionProfileEditForm',
    components: {
      UiButton
    },
    props: {
      title: {
        type: String,
        default: ''
      },
      disabled: {
        type: Boolean,
        default: false
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    padding: 2.4em;
    background: var(--root-color-base-0);
    border: 1px solid var(--root-color-base-200);
    border-radius: 1.2em;
  }

  .title {
    margin-bottom: 2.4em;
    font-family: var(--root-font-family-header);
    .t {
      font-weight: 500;
      font-size: 1.6em;
      line-height: 1.12;
    }
  }
  .grid {
    display: grid;
    grid-template-columns: 1fr;
    grid-gap: 1.2em;
    margin-bottom: 2.4em;
  }
</style>
