import { combineReducers } from 'redux'

import SessionReducer from './session-reducer'
import PostsReducer from './posts-reducer'

const RootReducer = combineReducers({
  session: SessionReducer,
  posts: PostsReducer
})

export default RootReducer
