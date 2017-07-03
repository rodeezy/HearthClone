export const fetchPosts = () => (
  $.ajax({
    url: 'api/posts',
  })
)

export const fetchPost = id => (
  $.ajax({
    url: `api/posts/${id}`
  })
)


export const createPost = data => (
  $.ajax({
    method: 'POST',
    url: 'api/posts',
    data
  })
)

export const createImagePost = data => (
  $.ajax({
    method: 'POST',
    url: 'api/image_posts',
    data
  })
)

export const createComment = data => (
  $.ajax({
    method: 'POST',
    url: 'api/comments'
  })
)

// export const fetchImagePosts = postId => (
//   $.ajax({
//     url: `api/posts/${postId}/image_posts`
//   })
// )
//
// export const fetchImagePost = id => (
//   $.ajax({
//     url: `api/image_posts/${id}`
//   })
// )
