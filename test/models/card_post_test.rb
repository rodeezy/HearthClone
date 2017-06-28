# == Schema Information
#
# Table name: card_posts
#
#  id          :integer          not null, primary key
#  author_id   :integer          not null
#  description :text
#  attack      :integer          not null
#  defense     :integer          not null
#  cost        :integer          not null
#  powerup     :string
#  upvotes     :integer          default("0")
#  downvotes   :integer          default("0")
#  class       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string           not null
#

require 'test_helper'

class CardPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
