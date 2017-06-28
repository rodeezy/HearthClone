# == Schema Information
#
# Table name: card_post_comment_replies
#
#  id         :integer          not null, primary key
#  author_id  :integer          not null
#  comment_id :integer          not null
#  body       :text             not null
#  upvotes    :integer          default("0")
#  downvotes  :integer          default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reply < ApplicationRecord
end
