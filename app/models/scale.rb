# == Schema Information
#
# Table name: scales
#
#  id            :integer          not null, primary key
#  user_id       :integer          not null
#  value         :integer          not null
#  scalable_id   :integer          not null
#  scalable_type :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Scale < ApplicationRecord
  validates :user, presence: true
  valdiates :value, inclusion: (1..10).to_a
  validates :user_id, uniqueness: { scope: [:scalable_id, :scalable_type] }

  belongs_to :scalable, polymorphic: true
  belongs_to :user
end
