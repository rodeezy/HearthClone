import React from 'react'
import ReactDOM from 'react-dom'
import Root from './components/root'
import configureStore from './store'


document.addEventListener('DOMContentLoaded', () => {
  let store = !window.currentUser ? configureStore() :
    configureStore({ session: { currentUser: window.currentUser } })
  const root = document.getElementById('root')
  ReactDOM.render(<Root store={store}/>, root)
})
