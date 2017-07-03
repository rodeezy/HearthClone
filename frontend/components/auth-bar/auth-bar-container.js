import { connect } from 'react-redux'
import { login, logout, signup, clearErrors } from '../../actions/session-actions'
import AuthBar from './auth-bar'

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser,
  errors: session.errors
})

const mapDispatchToProps = (dispatch) => ({
  login: user => dispatch(login(user)),
  logout: () => dispatch(logout()),
  signup: user => dispatch(signup(user)),
  clearErrors: () => dispatch(clearErrors())
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AuthBar)
