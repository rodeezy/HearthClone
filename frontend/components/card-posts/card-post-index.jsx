import React from 'react'
import CardPostIndexItem from './card-post-index-item'

class CardPostIndex extends React.Component {

  componentWillMount() {
    this.props.fetchPosts()
  }

  render() {
    return(
      <div className ="card-post-index">
        {this.props.posts.map(post =>(
          <CardPostIndexItem post={post} key={post.id}/>
        ))}
      </div>
    )
  }
}

export default CardPostIndex
