class Card < ActiveRecord::Base
  attr_accessible :side_a, :side_b

  has_and_belongs_to_many :lists

  def self.random
    Card.all.sample
  end
end
