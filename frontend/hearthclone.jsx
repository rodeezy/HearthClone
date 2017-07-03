import React from 'react'
import ReactDOM from 'react-dom'
import Root from './components/root'
import configureStore from './store'

//testing
// import * as Actions from './actions/post-actions'


document.addEventListener('DOMContentLoaded', () => {
  // window.Actions = Actions
  let store = !window.currentUser ? configureStore() :
    configureStore({ session: { currentUser: window.currentUser } })
  window.store = store
  const root = document.getElementById('root')
  ReactDOM.render(<Root store={store}/>, root)
})
