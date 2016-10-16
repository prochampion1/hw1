class Section < ApplicationRecord
  has_many :fooditems
  def self.all
    %w(Breakfast Lunch Dinner Drinks)    
  end
end

