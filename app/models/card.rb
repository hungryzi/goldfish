class Card < ActiveRecord::Base

  def self.random
    Card.all.sample
  end
end
