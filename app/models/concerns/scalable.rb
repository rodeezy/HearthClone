module Scalable
  extend ActiveSupport::Concern

  included do
    has_many :scales, as: :scalable, dependent: :destroy
  end

  def average_rating
    self.scales.sum(:value)/self.scales.count
  end
end
