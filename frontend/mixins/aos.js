import AOS from 'aos'
import 'aos/dist/aos.css'

export default function () {
  return {
    methods: {},
    mounted() {
      AOS.init({
        duration: 1000,
        once: true,
        disableMutationObserver: true,
        offset: 200
      })
    }
  }
}
