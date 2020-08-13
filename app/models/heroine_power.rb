class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    validates :strength, inclusion: { in: %w(Strong Average Weak),
    message: "%{value} is not a valid strength. Please choose  Strong, Average, or Weak" }
    validates :power, uniqueness: true
end
