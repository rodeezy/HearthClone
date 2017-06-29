json.partial! "api/card_posts/card_post", post: @post

json.image_posts do
  json.partial! "api/image_posts/image_post", collection: @post.image_posts, as: :image_post
end

json.comments do
  json.partial! "api/comments/comment", collection: @post.comments, as: :comment
end
