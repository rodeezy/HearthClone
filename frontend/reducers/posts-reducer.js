import { RECEIVE_POST,
  RECEIVE_POSTS } from '../actions/post-actions'

import merge from 'lodash/merge';

const PostsReducer = (state = {}, action) => {
  Object.freeze(state)
  let newState = merge({}, state)

  switch(action.type) {
    case RECEIVE_POSTS:
      return merge(newState, {posts: action.posts})
    case RECEIVE_POST:
      newState.posts.action.post.id = action.post
      return newState
    default:
      return state
  }
}

export default PostsReducer
