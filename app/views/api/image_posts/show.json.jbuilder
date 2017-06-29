json.partial! "api/image_posts/image_post", image_post: @image_post
json.comments do
  json.partial! "api/comments/comment", collection: image_post.comments, as: :comment
end
