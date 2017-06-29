# == Schema Information
#
# Table name: battle_cards
#
#  id             :integer          not null, primary key
#  battle_deck_id :integer
#  hand_id        :integer
#  field_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class BattleCard < ApplicationRecord

  belongs_to :hand
  belongs_to :battle_deck
  belongs_to :field
end
