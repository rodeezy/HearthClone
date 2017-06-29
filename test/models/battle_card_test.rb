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

require 'test_helper'

class BattleCardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
