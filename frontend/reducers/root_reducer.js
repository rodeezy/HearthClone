import { combineReducers } from 'redux'
import { routerReducer } from 'react-router-redux'
import SessionReducer from './session_reducer'

const RootReducer = combineReducers({
  session: SessionReducer
})

export default RootReducer
