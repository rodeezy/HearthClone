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
end
