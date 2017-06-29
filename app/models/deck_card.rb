# == Schema Information
#
# Table name: deck_cards
#
#  id          :integer          not null, primary key
#  deck_id     :integer          not null
#  card_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  two_in_deck :boolean          default("false")
#

class DeckCard < ApplicationRecord
  validates :deck_id, :card_id, presence: true

  belongs_to :deck
  belongs_to :card
end
