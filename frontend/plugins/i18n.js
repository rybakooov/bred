import VueI18n from 'vue-i18n'

VueI18n.prototype.getChoiceIndex = function getChoiceIndex (choice, choicesLength) {
  if (this.locale !== 'ru') {
    return choiceEN(choice, choicesLength)
  } else {
    return choiceRU(choice, choicesLength)
  }
}

function choiceRU (choice, choicesLength) {
  if (choice === 0) {
    return 0
  }

  const teen = choice > 10 && choice < 20
  const endsWithOne = choice % 10 === 1

  if (choicesLength < 4) {
    return (!teen && endsWithOne) ? 1 : 2
  }
  if (!teen && endsWithOne) {
    return 1
  }
  if (!teen && choice % 10 >= 2 && choice % 10 <= 4) {
    return 2
  }

  return (choicesLength < 4) ? 2 : 3
}

function choiceEN (choice, choicesLength) {
  choice = Math.abs(choice)
  return choice ? Math.min(choice, 2) : 0
}

VueI18n.prototype.createPath = function (path, locale) {
  let result = ''
  locale = locale || this.locale
  path = path.replace(`/${this.locale}`, '').replace(/^\//, '')

  if (locale === this.defaultLocale) {
    result = path
  } else {
    result = `${locale}/${path}`
  }

  result = result
    .replace(/\/$/, '')
    .replace(/\/#/, '#')
    .replace(/\/\?/, '?')

  return '/' + result
}
