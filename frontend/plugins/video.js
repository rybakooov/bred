import Vue from 'vue'

import 'video.js/dist/video-js.css'

// If used in nuxt.js/ssr, you should keep it only in browser build environment
if (process.browser) {
  const VueVideoPlayer = require('vue-video-player/dist/ssr')
  Vue.use(VueVideoPlayer)
}
//
//
//
// import videojs from 'video.js'
//
// // videojs plugin
// const Plugin = videojs.getPlugin('plugin')
// class ExamplePlugin extends Plugin {
//   // something...
// }
// videojs.registerPlugin('examplePlugin', ExamplePlugin)
