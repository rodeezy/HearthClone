import React from 'react'

const VoteItem = ({votes}) => {

  let total
  switch(votes.length) {
    case 0:
      total = 0
      break
    case 1:
      total = votes[0].value
      break
    default:
      total = votes.reduce((a,b) => a.value + b.value)
  }

  return (
    <div className="vote-item">
      total votes: {total}
    </div>
  )
}

export default VoteItem
