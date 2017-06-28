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

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
