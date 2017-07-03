import React from 'react'
import { Link } from 'react-router'
import AuthBarContainer from './auth-bar/auth-bar-container'

const App = ({ children }) => (
  <div>
    <header>
      <h1>Shalom!</h1>
      <AuthBarContainer/>
    </header>
    {children}
  </div>
)

export default App
