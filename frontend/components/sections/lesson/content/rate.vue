<template>
  <transition name="fade">
    <div :class="$style.container" v-if="!posted">
      <h2 :class="$style.title">
        <span :class="$style.t">Оцените урок</span>
      </h2>
      <div :class="$style.list">
        <ui-button :class="$style.item" v-for="item in rate" :key="item.value" @click="post(item.value)">
          <span :class="$style.t">{{ item.symbol }}</span>
        </ui-button>
      </div>
    </div>
    <div :class="$style.container" v-else>
      <h2 :class="$style.title">
        <span :class="$style.t">Спасибо за Вашу оценку!</span>
      </h2>
    </div>
  </transition>
</template>

<script>
  import UiButton from '~/components/ui/button'

  export default {
    name: 'SectionLessonContentRate',
    components: {
      UiButton
    },
    props: {
      themeId: {
        type: Number,
        required: true
      },
      lessonId: {
        type: Number,
        required: true
      }
    },
    data() {
      return {
        posted: false,
        rate: [{
          symbol: '😡',
          value: 1
        }, {
          symbol: '☹️',
          value: 2
        }, {
          symbol: '😐',
          value: 3
        }, {
          symbol: '😌',
          value: 4
        }, {
          symbol: '😊',
          value: 5
        }]
      }
    },
    methods: {
      post(val) {
        try {
          this.$axios.$post(`/subjects/${this.themeId}/lessons/${this.lessonId}/rate/`, { rate: val })
        } catch (e) {} finally {
          this.posted = true
        }
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
    }
  }

  .list {
    margin-top: 2.4em;
    display: flex;
    align-items: center;
  }

  .item {
    width: 5.6em;
    height: 5.6em;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: 500;
    font-family: var(--root-font-family-header);
    background-color: var(--root-color-base-100);
    border-radius: 50%;
    border: 1px solid var(--root-color-base-100);
    & + & {
      margin-left: 1.6em;
      @include down(md) {
        margin-left: 1.2em;
      }
    }
    &:hover {
      border-color: var(--root-color-blue-400);
    }
    .t {
      font-size: 2.4em;
    }
  }
</style>
