import { connect } from 'react-redux'
import { fetchPosts } from '../../actions/post-actions'
import CardPostIndex from './card-post-index'
import { asArray } from '../../reducers/selectors'

const mapStateToProps = state => ({
  posts: state.posts.posts,
})

const mapDispatchToProps = dispatch => ({
  fetchPosts: () => dispatch(fetchPosts()),
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CardPostIndex)
