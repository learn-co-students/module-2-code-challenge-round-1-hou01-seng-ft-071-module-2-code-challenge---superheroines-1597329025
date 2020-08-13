class HeroinePower < ApplicationRecord
    belongs_to :heroine 
    belongs_to :power

    # validates :strength, uniqueness: { scope: 'Strong', 'Weak', 'Average'}
    # validates :power_id,uniqueness:(scope: heroine_id message: "This combination already exist")
end
