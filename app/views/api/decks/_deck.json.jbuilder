json.extract! deck, :id, :name, :hero_class
json.cards do
  json.partial! 'api/cards/card', collection: deck.cards, as: :card
end
