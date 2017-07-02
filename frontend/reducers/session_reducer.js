import {
  RECEIVE_CURRENT_USER,
  RECEIVE_ERRORS,
  CLEAR_ERRORS
} from '../actions/session_actions'
// import merge from 'lodash/merge'

const _nullUser = Object.freeze({
  currentUser: null,
  errors: []
})

const SessionReducer = (state = _nullUser, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return { ...state, currentUser: action.currentUser }
    case RECEIVE_ERRORS:
      return { ...state, errors: action.errors }
    case CLEAR_ERRORS:
      return { ...state, errors: [] }
    default:
      return state
  }
}

export default SessionReducer
