class Power < ApplicationRecord
    belongs_to :heroine_powers
    delegate :heroine, to: :heroine_power
end
