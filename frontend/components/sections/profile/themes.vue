<template>
  <main :class="$style.themes">
    <h2 :class="$style.title">
      <span :class="$style.t">
        Темы курса
      </span>
    </h2>
    <div :class="$style.grid">
      <section-profile-theme
        @click.native="openTheme(subject)"
        v-for="subject in subjects"
        :key="subject.id"
        :title="subject.name"
        :completed="getComplete(subject.id)"
        :lessons="subject.lessons.length"
        :progress="getPercent(subject.id)"
        :image="getImage(subject.image.file)"
      />
    </div>
    <popup-theme ref="popup" />
  </main>
</template>

<script>
  import PopupTheme from '~/components/popups/theme'
  import SectionProfileTheme from '~/components/sections/profile/theme'
  import { mapState, mapGetters } from 'vuex'

  export default {
    name: 'ProfileThemes',
    components: {
      SectionProfileTheme,
      PopupTheme
    },
    computed: {
      ...mapState('subjects', ['subjects']),
      ...mapGetters('users', ['getCompleteById', 'getPercentById'])
    },
    methods: {
      getComplete(id) {
        return this.getCompleteById(id)
      },
      getPercent(id) {
        return this.getPercentById(id)
      },
      openTheme(subject) {
        this.$refs.popup.openPopup(subject)
      },
      getImage(imgPath) {
        return !imgPath ? '' : process.env.NODE_ENV === 'development' ? `http://localhost:8000${imgPath}` : `https://api.trade-study.ru${imgPath}`
      }
    }
  }
</script>

<style lang="scss" module>
  .themes {
    width: 100%;
  }
  .title {
    font-family: var(--root-font-family-header);
    font-weight: 500;
    margin-bottom: 1.6em;
    @include down(md) {
      display: none;
    }
    .t {
      font-size: 2.4em;
      line-height: 1.08;
    }
  }

  .grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    width: 100%;
    margin-top: 1.6em;
    grid-gap: 1.6em;
    padding-bottom: 3.2em;
    @include down(xxl) {
      grid-template-columns: 1fr;
    }
    @include down(md) {
      grid-gap: 1.2em;
    }
  }
</style>
