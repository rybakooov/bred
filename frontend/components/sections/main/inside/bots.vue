<template>
  <div :class="$style.container">
    <template v-for="(bot, i) in bots">
      <div :class="$style.item" :key="i + '_bot'">
        <img
          :src="bot.image"
          :class="$style.image"
        />
        <div :class="$style.content">
          <div :class="$style.header">
            <p :class="$style.title"><span :class="$style.text">{{ bot.title }}</span></p>
            <div :class="$style.dateWrap">
              <icon-read />
              <div :class="$style.date"><span :class="$style.text">9/29</span></div>
            </div>
          </div>
          <p :class="$style.message"><span :class="$style.text">{{ bot.message }}</span></p>
        </div>
      </div>
    </template>
  </div>
</template>

<script>
  import IconRead from '~/components/icons/read'

  export default {
    name: 'BlocksBots',
    components: {
      IconRead
    },
    props: {
      bots: {
        type: Array,
        required: true
      }
    }
  }
</script>

<style lang="scss" module>
  .container {
    border-top: 0.33px solid rgba(190, 190, 192, 0.29);
    padding-left: 1em;
  }
  .item {
    display: flex;
    padding-top: .65em;
    &:not(:last-child) {
      .content {
        border-bottom: 0.33px solid rgba(190, 190, 192, 0.29);
      }
    }
  }
  .image {
    width: 6em;
    height: 6em;
    flex-shrink: 0;
    margin-right: 1em;
  }
  .content {
    width: 100%;
    padding-bottom: 2.7em;
  }
  .header {
    display: flex;
    justify-content: space-between;
  }
  .title {
    margin-right: 2em;
    .text {
      font-size: 1.6em;
      line-height: 1.31;
      letter-spacing: -0.03em;
      color: #000000;
    }
  }
  .dateWrap {
    display: flex;
    align-items: center;
    svg {
      width: 1.7em;
      height: auto;
      display: block;
    }
  }
  .date {
    color: #8E8E93;
    margin-right: 1em;
    margin-left: .5em;
    .text {
      font-size: 1.4em;
      line-height: 1.1;
      letter-spacing: -0.1px;
    }
  }
  .message {
    color: #8E8E93;
    .text {
      font-size: 1.5em;
      line-height: 1.33;
      letter-spacing: -0.025em;
    }
  }
</style>
