# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  attack     :integer          not null
#  defense    :integer          not null
#  cost       :integer          not null
#  powerup    :string
#  name       :string           not null
#  card_type  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Card < ApplicationRecord
  validates :attack, :defense, :cost, :name, :card_type, presence: true
  validates :name, uniqueness: true
  validates :card_type, inclusion: ['minion', 'elemental', 'beast', 'murloc', 'dragon', 'spell']

  has_many :deck_cards
  has_many :decks, through: :deck_cards
end
