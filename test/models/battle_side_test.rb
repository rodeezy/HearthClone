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

require 'test_helper'

class BattleSideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
