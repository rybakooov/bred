import { Scroll } from './class'

export default ({ app }, inject) => {
  inject('scroll', new Scroll(document.scrollingElement))
}
