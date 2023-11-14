<template>
  <ui-button @click.native="onClick" :class="[$style.item, {[$style.disabled]: closed}]" :disabled="closed">
    <span :class="$style.content">
      <span :class="$style.title"><span v-if="index">{{ index }}. </span>{{ title }}</span>
      <icon-lock :class="$style.icon" v-if="closed" />
      <template>
        <icon-check-fill :class="[$style.icon, $style.icon_check]" v-if="completed" />
        <icon-arrow-right-s-line :class="$style.icon" />
      </template>
    </span>
  </ui-button>
</template>

<script>
  import UiButton from '~/components/ui/button'
  import IconLock from '~/components/icons/lock'
  import IconArrowRightSLine from '~/components/icons/arrow-right-s-line'
  import IconCheckFill from '~/components/icons/check-fill'

  export default {
    name: 'ThemeLesson',
    components: {
      IconCheckFill,
      IconArrowRightSLine,
      IconLock,
      UiButton
    },
    props: {
      closed: {
        type: Boolean,
        default: false
      },
      completed: {
        type: Boolean,
        default: true
      },
      title: {
        type: String,
        default: ''
      },
      href: {
        type: String,
        default: ''
      },
      index: {
        type: Number,
        required: true
      },
      id: {
        type: Number,
        required: true
      },
      themeId: {
        type: Number,
        required: true
      }
    },
    methods: {
      onClick() {
        this.$emit('close')
        if (!this.id) {
          this.$router.push(`/themes/${this.themeId}/test`)
          return
        }
        this.$router.push(`/themes/${this.themeId}/${this.id}/lesson`)
      }
    }
  }
</script>

<style module lang="scss">
  .item {
    padding: 1.2em 2.4em;
    margin: 0 -2.4em;
    display: block;
    color: var(--root-color-base-900);
    width: calc(100% + 4.8em);
    &.disabled {
      color: var(--root-color-base-400);
      .title {
      }
    }
    &:not(.disabled):hover {
      background-color: var(--root-color-base-100);
    }
  }

  .content {
    display: flex;
    align-items: center;
  }

  .title {
    font-size: 1.6em;
    line-height: 1.12;
    // word-break: break-all;
    text-align: left;
    padding-right: 1rem;
  }

  .icon {
    margin-left: auto;
    width: 1.6em;
    height: auto;
    display: block;
    flex-shrink: 0;
    &_check {
      color: var(--root-color-blue-500);
    }
    & + & {
      margin-left: 1.6em;
    }
  }
</style>
