export const state = () => ({
  isFetching: false,
  news: []
})
export const actions = {
  async get({ state, dispatch, commit, getters }) {
    if (state.isFetching) {
      return
    }

    try {
      commit('isFetching', true)
      const news = await this.$axios.$get(`/stocks/news/`)
      commit('news', news)
    } catch (e) {} finally {
      commit('isFetching', false)
    }
    return state.news
  }
}
export const mutations = {
  isFetching (state, isFetching) {
    state.isFetching = isFetching
  },
  news(state, news) {
    state.news = news
  }
}
