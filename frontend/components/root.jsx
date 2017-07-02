import React from 'react'
// see protectedrouter and object
import { Provider } from 'react-redux'

import { Router, Route, IndexRoute, hashHistory } from 'react-router'

import App from './app'

const Root = ({ store }) => {

  const _ensureLoggedIn = (nextState, replace) => {
    if (!store.getState().session.currentUser)
      replace('/')
  }
  //redirectIfLoggedIn

  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path="/" component={App}>

        </Route>
      </Router>
    </Provider>
  )
}
