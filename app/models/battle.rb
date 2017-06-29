# == Schema Information
#
# Table name: battles
#
#  id          :integer          not null, primary key
#  in_progress :boolean          default("true")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Battle < ApplicationRecord
  #validate only two battle sides
  has_many :battle_sides
end
