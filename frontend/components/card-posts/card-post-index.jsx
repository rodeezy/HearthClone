import React from 'react'

class CardPostIndex extends React.Component {

  componentWillMount() {
    this.props.fetchPosts()
  }

  render() {
    return(
      <div>
        {console.log(this.props.posts)}
        {this.props.posts}
      </div>
    )
  }
}

export default CardPostIndex
