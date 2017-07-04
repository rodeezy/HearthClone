import React from 'react'
import VoteItem from '../voting/vote-item'
import ScaleItem from '../voting/scale-item'
import { withRouter } from 'react-router'

const CardPostIndexItem = ({post}) => {

  return (
    <div className="card-post-index-item">
      attack: {post.attack} <br/>
      defense: {post.defense} <br/>
      cost: {post.cost} <br/>
      name: {post.name} <br/>
      <VoteItem votes={post.votes}/> <br/>
      <ScaleItem scales={post.scales}/>
      <br/><br/>
    </div>
  )
}

export default withRouter(CardPostIndexItem)
