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

class Comment < ApplicationRecord
  validates :author_id, :post_id, :body, presence: true

  belongs_to :author, class_name: :User
  belongs_to :post, polymorphic: true
end
