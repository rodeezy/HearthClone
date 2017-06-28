# == Schema Information
#
# Table name: replies
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
  validates :author_id, :comment_id, :body, presence: true

  belongs_to :comment
end
