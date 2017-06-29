# == Schema Information
#
# Table name: battle_sides
#
#  id         :integer          not null, primary key
#  player_id  :integer          not null
#  deck_id    :integer          not null
#  health     :integer          default("30")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  battle_id  :integer          not null
#

class BattleSide < ApplicationRecord
  validates :player_id, :deck_id, :battle_id, presence: true

  belongs_to :battle
  belongs_to :player, class_name: :User
  belongs_to :deck
  has_one :hand
  has_one :field
  has_one :battle_deck
end
