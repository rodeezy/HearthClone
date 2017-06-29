# == Schema Information
#
# Table name: fields
#
#  id             :integer          not null, primary key
#  battle_side_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Field < ApplicationRecord
  validates :battle_side_id, presence: true

  belongs_to :battle_side
  has_many :battle_cards
end
