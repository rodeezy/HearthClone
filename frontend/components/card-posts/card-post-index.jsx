import React from 'react'

class CardPostIndex extends React.Component {

  componentWillMount() {
    console.log('yo!');
    this.props.fetchPosts()
  }

  render() {
    const postros = !!this.props.posts ? this.props.posts : [1,1]
    return(
      <div>
        {console.log('hey')}
        {console.log(postros[1])}
      </div>
    )
  }
}

export default CardPostIndex
