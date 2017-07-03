import { createStore, applyMiddleware } from 'redux'
import RootReducer from './reducers/root-reducer'
import thunk from 'redux-thunk'

const configureStore = (preloadedState = {}) => (
  createStore(
    RootReducer,
    preloadedState,
    applyMiddleware(thunk)
  )
)

export default configureStore
