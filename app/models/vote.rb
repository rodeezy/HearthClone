# == Schema Information
#
# Table name: votes
#
#  id           :integer          not null, primary key
#  user_id      :integer          not null
#  value        :integer          not null
#  votable_id   :integer          not null
#  votable_type :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Vote < ApplicationRecord
  validates :user, presence: true
  validates :user_id, uniqueness: { scope: [:votable_id, :votable_type] }

  belongs_to :votable, polymorphic: true
  belongs_to :user
end
