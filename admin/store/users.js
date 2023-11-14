export const state = () => ({
  users: null,
  isFetching: false
})
export const actions = {
  async get({ state, dispatch, commit, getters }) {
    if (state.isFetching) {
      return
    }

    try {
      commit('isFetching', true)
      const users = await this.$axios.$get('/users/')
      commit('users', users)
    } catch (e) {} finally {
      commit('isFetching', false)
    }
    return state.users
  },
  async post({ commit }, userData) {
    try {
      await this.$axios.$post('/users/', userData)
    } catch (e) {} finally {}
  },
  async update({ commit }, { id, userData }) {
    try {
      await this.$axios.$patch(`/users/${id}/`, userData)
    } catch (e) {} finally {}
  },
  async delete({ commit }, id) {
    try {
      await this.$axios.$delete(`/users/${id}/`)
    } catch (e) {} finally {}
  }
}
export const mutations = {
  isFetching (state, isFetching) {
    state.isFetching = isFetching
  },
  users(state, users) {
    state.users = users
  }
}
