@posts.each do |post|
  json.set! post.id do
    json.partial! 'card_post', post: post
  end
end
