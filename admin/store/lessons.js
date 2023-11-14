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
      const lessons = await this.$axios.$get(`/admin/subjects/${id}/lessons/`)
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
      const lesson = await this.$axios.$get(`/admin/subjects/${subjectId}/lessons/${lessonId}/`)
      commit('lesson', lesson)
    } catch (e) {} finally {
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
      const test = await this.$axios.$get(`/admin/subjects/${subjectId}/lessons/${lessonId}/test/`)
      commit('test', test)
    } catch (e) {
      commit('test', null)
    } finally {
      commit('isFetching', false)
    }
    return state.test
  },

  async post({ commit }, { id, lessonData }) {
    try {
      await this.$axios.$post(`/admin/subjects/${id}/lessons/`, lessonData)
    } catch (e) {} finally {}
  },
  async update({ commit }, { themeId, lessonId, lessonData }) {
    try {
      await this.$axios.$patch(`/admin/subjects/${themeId}/lessons/${lessonId}/`, lessonData)
    } catch (e) {} finally {}
  },
  async delete({ commit }, { themeId, lessonId }) {
    try {
      await this.$axios.$delete(`/admin/subjects/${themeId}/lessons/${lessonId}/`)
    } catch (e) {} finally {}
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
