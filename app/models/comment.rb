# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  author_id  :integer          not null
#  post_id    :integer          not null
#  body       :text             not null
#  upvotes    :integer          default("0")
#  downvotes  :integer          default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_type  :string           not null
#

class Comment < ApplicationRecord
  validates :author_id, :post_id, :body, presence: true

  belongs_to :author, class_name: :User
  belongs_to :post, polymorphic: true
  has_many :replies
end
