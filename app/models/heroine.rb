class Heroine < ApplicationRecord
    has_many :powers, through: :heroine_powers
    has_and_belongs_to_many :heroine_powers 
end
