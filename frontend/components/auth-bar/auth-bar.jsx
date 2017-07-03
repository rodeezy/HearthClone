import React from 'react'
import { Link, withRouter } from 'react-router'

class AuthBar extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      username: "",
      password: ""
    }
    this.handleSignUp = this.handleSignUp.bind(this)
    this.handleLogin = this.handleLogin.bind(this)
  }

  handleSignUp(event) {
    // event.preventDefault()
    this.props.signup({user: this.state})
  }

  handleLogin(event) {
    // event.preventDefault()
    this.props.login({user: this.state})
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    })
  }

  render() {
    return(
      <div className="auth-bar">
        username:
        <input onChange={this.update('username')} value={this.state.username}/>
        password:
        <input type="password" onChange={this.update('password')} value={this.state.password}/>
        <button onClick={this.handleSignUp}>Sign Up</button>
        <button onClick={this.handleLogin}>Log in</button>
      </div>
    )
  }
}

export default AuthBar
