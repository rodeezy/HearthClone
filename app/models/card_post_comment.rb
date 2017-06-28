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

class CardPostComment < ApplicationRecord
end