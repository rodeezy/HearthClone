# == Schema Information
#
# Table name: card_post_image_posts
#
#  id          :integer          not null, primary key
#  author_id   :integer          not null
#  post_id     :integer          not null
#  image_url   :string           not null
#  upvotes     :integer          not null
#  downvotes   :integer          not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CardPostImagePost < ApplicationRecord
end