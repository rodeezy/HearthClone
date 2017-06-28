# == Schema Information
#
# Table name: card_post_comments
#
#  id         :integer          not null, primary key
#  author_id  :integer          not null
#  post_id    :integer          not null
#  body       :text             not null
#  upvotes    :integer          default("0")
#  downvotes  :integer          default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CardPostCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
