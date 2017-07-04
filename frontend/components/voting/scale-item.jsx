import React from 'react'

const ScaleItem = ({scales}) => {

  let average
  switch(scales.length) {
    case 0:
      average = "no votes"
      break
    case 1:
      average = scales[0].value
      break
    default:
      average = scales.reduce((a,b) => a.value + b.value) / scales.length
  }

  return (
    <div className="vote-item">
      average rating: {average}<br/>
      total ratings: {scales.length}
    </div>
  )
}

export default ScaleItem
