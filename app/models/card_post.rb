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
#  card_type   :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string           not null
#

class CardPost < ApplicationRecord
  include Votable
  include Scalable

  validates :author_id, :attack, :defense, :cost, :card_type, :name, presence: true
  validates :card_type, inclusion: ['minion', 'elemental', 'beast', 'murloc', 'dragon', 'spell']

  has_many :comments, as: :post
  has_many :image_posts, foreign_key: :post_id
  belongs_to :author, class_name: :User
end
