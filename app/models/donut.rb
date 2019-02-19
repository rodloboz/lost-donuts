class Donut < ApplicationRecord
  SHAPES = ["ring", "hole", "filled"]

  validates :shape, inclusion: { in: SHAPES }
  validates :price, presence: true
end
