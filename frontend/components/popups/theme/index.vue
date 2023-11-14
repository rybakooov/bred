<template>
  <ui-popup-content ref="popup" :class-content="$style.container" @close="onClose" :class-popup="$style.popup">
    <div :class="$style.content" v-if="theme">
      <p :class="$style.subtitle">
        <span :class="$style.t">Тема</span>
      </p>
      <p :class="$style.title">
        <span :class="$style.t">{{ theme.name }}</span>
      </p>
      <p :class="$style.description" v-if="theme.summary">
        <span :class="$style.t">{{ theme.summary }}</span>
      </p>
      <p :class="$style.lessons">
        <span :class="$style.t">Уроки</span>
      </p>
      <div :class="$style.list">
        <theme-lesson
          v-for="item in theme.lessons"
          :key="item.id"
          :index="item.order + 1"
          :title="item.name"
          :id="item.id"
          :theme-id="theme.id"
          @close="$refs.popup.close()"
          :completed="lessonComplete(item.id)"
          :closed="closed(item.order)"
        />
        <theme-lesson
          :index="0"
          title="Итоговый тест"
          :id="0"
          :theme-id="theme.id"
          @close="$refs.popup.close()"
          :closed="!successLessons"
          :completed="the().subject_assignment_progress.is_complete"
        />
      </div>
    </div>
  </ui-popup-content>
</template>

<script>
  import UiPopupContent from '~/components/ui/popup/content'
  import ThemeLesson from '~/components/popups/theme/lesson'
  import { mapGetters, mapState } from 'vuex'

  export default {
    name: 'PopupTheme',
    components: {
      ThemeLesson,
      UiPopupContent
    },
    data() {
      return {
        theme: null
      }
    },
    computed: {
      ...mapGetters('users', ['getLessonCompleteByIds', 'getLessonClosedByOrder', 'getThemeById']),
      successLessons() {
        return this.getThemeById(this.theme.id).lessons_progress.filter((el) => {
          return el.is_completed
        }).length === this.getThemeById(this.theme.id).lessons_progress.length
      }
    },
    methods: {
      the() {
        return this.getThemeById(this.theme.id)
      },
      lessonComplete(id) {
        return this.getLessonCompleteByIds(this.theme.id, id)
      },
      closed(order) {
        return this.getLessonClosedByOrder(this.theme.id, order)
      },
      openPopup(subject) {
        this.theme = subject
        this.$refs.popup.open()
      },
      onClose() {
        this.theme = null
      }
    }
  }
</script>

<style module lang="scss">
  .popup {
    @include down(md) {
      overflow: hidden;
    }
  }
  .container {
    pointer-events: none;
    @include down(md) {
      height: 100%;
    }
  }

  .content {
    padding: 2.4em;
    border-radius: 1.2em;
    background-color: var(--root-color-base-0);
    width: 53.6em;
    pointer-events: all;
    @include down(md) {
      width: 100%;
      border-radius: 1.2em 1.2em 0 0;
      position: absolute;
      bottom: 0;
      max-height: calc(100% - 7.2em);
      overflow-y: scroll;
      @include hide-scrollbar;
    }
  }

  .subtitle {
    color: var(--root-color-base-400);
    .t {
      font-size: 1.4em;
      line-height: 1.14;
    }
  }

  .title {
    margin-top: 0.8em;
    font-weight: 500;
    font-family: var(--root-font-family-header);
    // word-break: break-all;
    .t {
      font-size: 3.6em;
      line-height: 1.06;
      @include down(lg) {
        font-size: 2.4em;
        line-height: 1.08;
      }
    }
  }

  .description {
    color: var(--root-color-base-700);
    margin-top: 2.4em;
    padding-bottom: 2.4em;
    border-bottom: 1px solid var(--root-color-base-200);
    .t {
      font-size: 1.6em;
      line-height: 1.5;
    }
  }

  .lessons {
    margin-top: 2.4em;
    font-weight: 500;
    color: var(--root-color-blue-500);
    margin-bottom: 1.2em;
    .t {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }
</style>
