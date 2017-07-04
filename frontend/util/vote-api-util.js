export const createVote = data => (
  $.ajax({
    method: 'POST',
    url: 'api/votes',
    data
  })
)

export const createScale = data => (
  $.ajax({
    method: 'POST',
    url: 'api/scales',
    data
  })
)

export const updateVote = (id, data) => (
  $.ajax({
    method: 'PATCH',
    url: `api/votes/${id}`,
    data
  })
)

export const updateScale = (id, data) => (
  $.ajax({
    method: 'PATCH',
    url: `api/scales/${id}`,
    data
  })
)

export const cancelVote = id => (
  $.ajax({
    method: 'DELETE',
    url: `api/votes/${id}`
  })
)

export const cancelScale = id => (
  $.ajax({
    method: 'DELETE',
    url: `api/scales/${id}`
  })
)
