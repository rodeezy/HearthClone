json.extract! image_post, :id, :post_id, :image_url, :description
json.author image_post.author.username

json.votes do
  json.partial! "api/votes/vote", collection: image_post.votes, as: :vote
end

json.votes do
  json.partial! "api/scales/scale", collection: image_post.scales, as: :scale
end
