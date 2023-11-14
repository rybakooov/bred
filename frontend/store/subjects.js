export const state = () => ({
  subjects: [],
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
      const subjects = await this.$axios.$get('/subjects/')
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
      const subject = await this.$axios.$get(`/subjects/${id}/`)
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
      const test = await this.$axios.$get(`/subjects/${id}/test/`)
      commit('test', test)
    } catch (e) {
      commit('test', null)
    } finally {
      commit('isFetching', false)
    }
    return state.test
  },
  async checkTest({ state, dispatch, commit, getters }, { subjectId, results }) {
    if (state.isFetching) {
      return
    }

    let res

    try {
      commit('isFetching', true)
      res = await this.$axios.$put(`/subjects/${subjectId}/test/check/`, { results })
    } catch (e) {} finally {
      commit('isFetching', false)
    }
    return res
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
