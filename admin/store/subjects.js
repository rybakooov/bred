export const state = () => ({
  subjects: null,
  subject: null,
  isFetching: false,
  test: null
})

export const actions = {
  async get({ state, dispatch, commit, getters }) {
    if (state.isFetching) {
      return
    }

    try {
      commit('isFetching', true)
      const subjects = await this.$axios.$get('/admin/subjects/')
      commit('subjects', subjects)
    } catch (e) {} finally {
      commit('isFetching', false)
    }
    return state.subjects
  },
  async getItem({ state, dispatch, commit, getters }, id) {
    if (state.isFetching) {
      return
    }

    try {
      commit('isFetching', true)
      const subject = await this.$axios.$get(`/admin/subjects/${id}`)
      commit('subject', subject)
    } catch (e) {} finally {
      commit('isFetching', false)
    }
    return state.subject
  },
  async getTest({ state, dispatch, commit, getters }, id) {
    if (state.isFetching) {
      return
    }

    try {
      commit('isFetching', true)
      const test = await this.$axios.$get(`/admin/subjects/${id}/test/`)
      commit('test', test)
    } catch (e) {
      commit('test', null)
    } finally {
      commit('isFetching', false)
    }
    return state.test
  },
  async post({ commit }, subjectData) {
    try {
      await this.$axios.$post('/admin/subjects/', subjectData)
    } catch (e) {} finally {}
  },
  async update({ commit }, { id, subjectData }) {
    await this.$axios.$patch(`/admin/subjects/${id}/`, subjectData)
  },
  async delete({ commit }, id) {
    try {
      await this.$axios.$delete(`/admin/subjects/${id}/`)
    } catch (e) {} finally {}
  }
}
export const mutations = {
  isFetching (state, isFetching) {
    state.isFetching = isFetching
  },
  subjects(state, subjects) {
    state.subjects = subjects
  },
  subject(state, subject) {
    state.subject = subject
  },
  test(state, test) {
    state.test = test
  }
}
