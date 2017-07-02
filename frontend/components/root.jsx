import React from 'react'
// see protectedrouter and object
import { Provider } from 'react-redux'
import { Router, Route, IndexRoute } from 'react-router'

import App from './app'

const Root = ({ store, history }) => {

  const _ensureLoggedIn = (nextState, replace) => {
    if (!store.getState().session.currentUser)
      replace('/')
  }
  //redirectIfLoggedIn

  return (
    <Provider store={store}>
      <Router history={history}>
        <div>
          <Route path="/" component={App}>

          </Route>
        </div>
      </Router>
    </Provider>
  )
}

export default Root
