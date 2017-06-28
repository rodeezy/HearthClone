# == Schema Information
#
# Table name: image_posts
#
#  id          :integer          not null, primary key
#  author_id   :integer          not null
#  post_id     :integer          not null
#  image_url   :string           not null
#  upvotes     :integer          default("0"), not null
#  downvotes   :integer          default("0"), not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ImagePost < ApplicationRecord
  validates :author_id, :post_id, :image_url, presence: true

  has_many :comments, as: :post
  belongs_to :card_post, foreign_key: :post_id
  belongs_to :author, class_name: :User
end
