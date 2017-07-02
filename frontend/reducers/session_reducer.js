import {
  RECEIVE_CURRENT_USER,
  RECEIVE_ERRORS,
  CLEAR_ERRORS
} from '../actions/session_actions'
import merge from 'lodash/merge'

const _nullUser = Object.freeze({
  currentUser: null,
  errors: []
})

const SessionReducer = (state = _nullUser, action) => {
  let newState = merge({}, state)
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return merge(newState, {currentUser: action.currentUser})
    case RECEIVE_ERRORS:
      return merge(newState, {errors: action.errors})
    case CLEAR_ERRORS:
    return merge(newState, {errors: []})
    default:
      return state
  }
}

export default SessionReducer
