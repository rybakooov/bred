// Global page headers (https://go.nuxtjs.dev/config-head)

module.exports = {
  meta: [
    { charset: 'utf-8' },
    { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    { name: 'theme-color', content: '#ffffff' },
    { name: 'msapplication-TileColor', content: '#ffffff' },
    { name: 'mobile-web-app-capable', content: 'yes' },
    { name: 'apple-mobile-web-app-capable', content: 'yes' },
    { name: 'apple-mobile-web-app-status-bar-style', content: 'yes' },
    { name: 'og:type', content: 'website' },

    { 'http-equiv': 'cache-control', content: 'no-cache' },
    { 'http-equiv': 'expires', content: '0' },

    // { name: 'og:url', content: '' },
    // { hid: 'og:image', name: 'og:image', content: '' },
    // { hid: 'og:image:width', name: 'og:image:width', content: '1200' },
    // { hid: 'og:image:height', name: 'og:image:height', content: '630' },
    { hid: 'og:title', name: 'og:title', content: 'Start The History' },
    { hid: 'og:description', name: 'og:description', content: '' },
    { hid: 'description', name: 'description', content: '' }
  ],
  link: [
    // { rel: 'shortcut icon', href: '' },
    // { rel: 'image_src', href: '' },
    // { rel: 'preconnect', href: 'https://fonts.gstatic.com' }
  ],
  script: [
    { src: 'https://widget.cloudpayments.ru/bundles/cloudpayments' },
    { src: 'https://s3.tradingview.com/tv.js' }
  ]
}
