# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  attack     :integer          not null
#  defense    :integer          not null
#  cost       :integer          not null
#  powerup    :string
#  name       :string           not null
#  type       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Card < ApplicationRecord

end
