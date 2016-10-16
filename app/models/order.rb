class Order < ApplicationRecord
  belongs_to :fooditem
  validates :fooditem , :name, presence: true

end
