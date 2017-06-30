# == Schema Information
#
# Table name: comments
#
#  id                :integer          not null, primary key
#  author_id         :integer          not null
#  post_id           :integer          not null
#  body              :text             not null
#  upvotes           :integer          default("0")
#  downvotes         :integer          default("0")
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  post_type         :string           not null
#  parent_comment_id :integer
#

class Comment < ApplicationRecord
  include Votable

  validates :author_id, :post_id, :body, presence: true

  belongs_to :author, class_name: :User
  belongs_to :post, polymorphic: true
  belongs_to :parent_comment, class_name: :Comment
  has_many :replies, class_name: :Comment, foreign_key: :parent_comment_id
end
