import React from 'react'
import ReactDOM from 'react-dom'
import Root from './components/root'
import configureStore from './store'
import { browserHistory } from 'react-router'
import { syncHistoryWithStore } from 'react-router-redux'


document.addEventListener('DOMContentLoaded', () => {
  let store = !window.currentUser ? configureStore() :
    configureStore({ session: { currentUser: window.currentUser } })
  const root = document.getElementById('root')
  const history = syncHistoryWithStore(browserHistory, store)
  ReactDOM.render(<Root store={store} history={history}/>, root)
})
