json.extract! user, :id, :username, :wins, :losses

json.decks do
  json.partial! 'api/decks/deck', collection: user.decks, as: :deck
end

# json.decks user.decks.each do |deck|
#   json.extract! deck, :id, :hero_class, :name
# end
