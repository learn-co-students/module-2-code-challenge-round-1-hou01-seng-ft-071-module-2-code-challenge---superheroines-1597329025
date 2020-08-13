class Heroine < ApplicationRecord
    has_many :powers, through: :heroine_powers 
end
