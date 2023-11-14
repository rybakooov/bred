export const state = () => ({
  lessons: null,
  lesson: null,
  isFetching: false,
  test: null
})

export const actions = {
  async get({ state, dispatch, commit, getters }, id) {
    if (state.isFetching) {
      return
    }

    try {
      commit('isFetching', true)
      const lessons = await this.$axios.$get(`/subjects/${id}/lessons/`)
      commit('lessons', lessons)
    } catch (e) {} finally {
      commit('isFetching', false)
    }
    return state.lessons
  },
  async getItem({ state, dispatch, commit, getters }, { subjectId, lessonId }) {
    if (state.isFetching) {
      return
    }

    try {
      commit('isFetching', true)
      const lesson = await this.$axios.$get(`/subjects/${subjectId}/lessons/${lessonId}/`)
      commit('lesson', lesson)
    } catch (e) {
      commit('lesson', null)
    } finally {
      commit('isFetching', false)
    }
    return state.users
  },

  async getTest({ state, dispatch, commit, getters }, { subjectId, lessonId }) {
    if (state.isFetching) {
      return
    }

    try {
      commit('isFetching', true)
      const test = await this.$axios.$get(`/subjects/${subjectId}/lessons/${lessonId}/test/`)
      commit('test', test)
    } catch (e) {} finally {
      commit('isFetching', false)
    }
    return state.test
  },
  async checkTest({ state, dispatch, commit, getters }, { subjectId, lessonId, results }) {
    if (state.isFetching) {
      return
    }

    let res

    try {
      commit('isFetching', true)
      res = await this.$axios.$put(`/subjects/${subjectId}/lessons/${lessonId}/test/check/`, { results })
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
  lessons(state, lessons) {
    state.lessons = lessons
  },
  lesson(state, lesson) {
    state.lesson = lesson
  },
  test(state, test) {
    state.test = test
  }
}
