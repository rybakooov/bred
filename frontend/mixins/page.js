export default function () {
  return {
    head () {
      return {
        htmlAttrs: {
          land: this.$i18n.locale
        },
        title: this.title + ' | trade-study',
        meta: [
          { hid: 'og:title', name: 'og:title', content: this.title + ' | trade-study' },
          { hid: 'description', name: 'description', content: this.description + ' | trade-study' },
          { hid: 'og:description', name: 'og:description', content: this.description + ' | trade-study' },
          { hid: 'og:image', property: 'og:image', content: 'https://pl.trade-study.ru' + require('~/assets/images/favicons/opengraph.png') },
          { name: 'apple-mobile-web-app-title', content: 'trade-study' },
          { name: 'application-name', content: 'trade-study' },
          { name: 'msapplication-TileColor', content: '#333333' },
          { name: 'msapplication-config', content: 'https://pl.trade-study.ru' + '/browserconfig.xml' },
          { name: 'theme-color', content: '#333333' }
        ],
        link: this.links
      }
    },
    // https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control
    httpHeaders: () => ({
      'Cache-Control': 'max-age=300, public'
    }),
    computed: {
      title () {
        return ''
      },
      description () {
        return ''
      },
      links () {
        const result = [
          { rel: 'apple-touch-icon', sizes: '180x180', href: require('~/assets/images/favicons/apple-touch-icon.png') },
          { rel: 'icon', type: 'image/png', sizes: '32x32', href: require('~/assets/images/favicons/favicon-32x32.png') },
          { rel: 'icon', type: 'image/png', sizes: '16x16', href: require('~/assets/images/favicons/favicon-16x16.png') },
          { rel: 'manifest', href: 'https://pl.trade-study.ru' + '/site.webmanifest' },
          { rel: 'mask-icon', href: require('~/assets/images/favicons/safari-pinned-tab.svg'), color: '#333333' },
          { rel: 'shortcut icon', href: 'https://pl.trade-study.ru' + '/static/favicon.ico' }
        ]
        return result
      }
    },
    methods: {},
    mounted () {}
  }
}
