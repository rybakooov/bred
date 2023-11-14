<template>
  <div v-if="news">
    <h3 :class="$style.title">
      <span :class="$style.t">Новости</span>
    </h3>
    <div :class="$style.list">
      <section-profile-block
        v-for="i in news"
        :key="i.title"
        :class="$style.item"
        :title="i.title"
        :href="i.link"
        :subtitle="`Источник: ${i.source}`"
      >
        <img
          v-if="i.thumbnail"
          :src="i.thumbnail"
          :class="$style.image"
          alt=""
        />
      </section-profile-block>
    </div>
  </div>
</template>

<script>
  import { mapState } from 'vuex'
  import SectionProfileBlock from '~/components/sections/profile/block'

  export default {
    name: 'ProfileNews',
    components: {
      SectionProfileBlock
    },
    computed: {
      ...mapState('news', ['news'])
    }
  }
</script>

<style lang="scss" module>
  .title {
    font-weight: 600;
    @include down(md) {
      display: none;
    }
    .t {
      font-size: 2.4em;
      line-height: 1.08;
    }
  }
  .list {
    margin-top: 1.6em;
    .item {
      width: 100%;
      * {
        width: 100%;
      }
      &:not(:last-child) {
        margin-bottom: 1.6em;
      }
      .image {
        border-radius: 1.2em;
        overflow: hidden;
        width: 100%;
      }
    }
  }
</style>
