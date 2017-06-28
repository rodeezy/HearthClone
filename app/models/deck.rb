# == Schema Information
#
# Table name: decks
#
#  id         :integer          not null, primary key
#  owner_id   :integer          not null
#  hero_class :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Deck < ApplicationRecord
  validates :owner_id, :hero_class, :name, presence: true
  validates :hero_class, inclusion: ["Mage", "Warlock", "Warrior", "Priest", "Shaman"]

  belongs_to :owner, class_name: :User
  has_many :deck_cards
  has_many :cards, through: :deck_cards
end
