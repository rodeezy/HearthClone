# == Schema Information
#
# Table name: battles
#
#  id          :integer          not null, primary key
#  in_progress :boolean          default("true")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class BattleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
