import React from 'react'

import { withRouter } from 'react-router'

const CardPostIndexItem = ({post}) => {

  return (
    <div className="card-post-index-item">
      attack: {post.attack}
      <br/>
      defense: {post.defense}
      <br/>
      cost: {post.cost}
      <br/>
      name: {post.name}
      <br/>
    </div>
  )
}

export default withRouter(CardPostIndexItem)
