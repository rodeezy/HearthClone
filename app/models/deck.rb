# == Schema Information
#
# Table name: decks
#
#  id         :integer          not null, primary key
#  owner_id   :integer          not null
#  class      :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Deck < ApplicationRecord
  validates :owner_id, :class, :name, presence: true

  belongs_to :owner, class_name: :User
  has_many :deck_cards
  has_many :cards through: :deck_cards
end
