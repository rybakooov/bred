<template>
  <div :class="$style.container">
    <div v-if="loading" class="video-player-box" v-video-player:myVideoPlayer="playerOptions" />
  </div>
</template>

<script>
  require('videojs-youtube')

  export default {
    name: 'SectionLessonContentVideo',
    props: {
      src: {
        type: String,
        required: true
      }
    },
    data() {
      return {
        loading: false,
        techOrder: ['youtube'],
        playerOptions: {
          fluid: true,
          techOrder: ['youtube'],
          sources: [{
            type: 'video/youtube',
            src: null
          }],
          youtube: {
            customVars: {
              rel: 0,
              iv_load_policy: 3,
              modestbranding: 1,
              showinfo: 0
            }
          },
          playbackRates: [0.5, 1, 1.5, 2]
        }
      }
    },
    mounted() {
      this.playerOptions.sources[0].src = this.src
      this.loading = true
    },
    watch: {
      src(val) {
        this.loading = false
        this.playerOptions.sources[0].src = val
        this.loading = true
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    border: 1px solid var(--root-color-base-200);
    border-radius: 1.2em;
    overflow: hidden;
    width: 100%;
    position: relative;
    & > div {
      width: 100%;
    }
    iframe {
      pointer-events: none;
    }
  }
  :global(.vjs-paused .vjs-poster) {
    //display: block !important;
  }

  :global(.vjs-poster) {
    display: none !important;
  }

  :global(.vjs-youtube-mobile .vjs-big-play-button) {
    display: block !important;
  }
  :global(.vjs-youtube-mobile.vjs-has-started .vjs-big-play-button) {
    display: none !important;
  }
</style>
