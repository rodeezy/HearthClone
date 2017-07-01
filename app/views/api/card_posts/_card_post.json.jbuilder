json.extract! post, :id, :description, :attack, :defense, :cost, :powerup, :card_type, :name
json.author post.author.username

json.votes do
  json.partial! "api/votes/vote", collection: post.votes, as: :vote
end

json.scales do
  json.partial! "api/scales/scale", collection: post.scales, as: :scale
end
