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
  # attr_reader :password

  validates :username, :password_digest, :session_token, presence: true
  validates :username, uniqueness: true
  validates :losses, :wins, numericality: { greater_than_or_equal_to: 0 }

  after_initialize :ensure_session_token

  has_many :decks, foreign_key: :owner_id
  has_many :card_posts, foreign_key: :author_id
  has_many :image_posts, foreign_key: :author_id
  has_one :battle_side # change to has_one if too hard to figure out
  has_one :hand, through: :battle_side
  has_one :field, through: :battle_side
  has_one :battle_deck, through: :battle_side

  def password= password
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return nil unless user
    user.password_is?(password) ? user : nil
  end

  def password_is? password
    BCrypt::Password.new(self.password_digest).is_password? password
  end

  def reset_session_token!
    self.session_token = new_session_token
    ensure_session_token_uniqueness
    self.save
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= new_session_token
  end

  def new_session_token
    SecureRandom.base64
  end

  def ensure_session_token_uniqueness
    while User.find_by(session_token: self.session_token)
      self.session_token = new_session_token
    end
  end
end
