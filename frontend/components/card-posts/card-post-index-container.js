import { connect } from 'react-redux'
import { fetchPosts } from '../../actions/post-actions'
import CardPostIndex from './card-post-index'

const mapStateToProps = state => ({
  posts: state.posts,
})

const mapDispatchToProps = dispatch => ({
  fetchPosts: () => dispatch(fetchPosts()),
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CardPostIndex)
