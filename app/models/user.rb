# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  wins            :integer          default("0")
#  losses          :integer          default("0")
#

#consider making UserCards model so not everyone has the same set of cards (like hearthstone)
class User < ApplicationRecord
  validates :username, :password_digest, :session_token, presence: true
  validates :username, uniqueness: true
  validates :losses, :wins, numericality: { greater_than_or_equal_to: 0 }

  has_many :decks, foreign_key: :owner_id
  has_many :card_posts, foreign_key: :author_id
  has_many :image_posts, foreign_key: :author_id
end
