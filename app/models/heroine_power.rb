class HeroinePower < ApplicationRecord
    has_one :heroine
    has_one :power

    validates :strength, presence: true 
end
