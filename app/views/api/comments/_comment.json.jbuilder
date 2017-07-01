json.extract! comment, :id, :post_id, :body, :post_type
json.votes do
  json.partial! "api/votes/vote", collection: comment.votes, as: :vote
end
