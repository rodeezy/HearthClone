import { combineReducers } from 'redux'

import SessionReducer from './session_reducer'

const Root Reducer = combinedReducers({
  session: SessionReducer
})

export default RootReducer
