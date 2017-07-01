module Votable
  extend ActiveSupport::Concern

  included do
    has_many :votes, as: :votable, dependent: :destroy
  end

  def total_votes
    self.votes.sum(:value)
  end
end
