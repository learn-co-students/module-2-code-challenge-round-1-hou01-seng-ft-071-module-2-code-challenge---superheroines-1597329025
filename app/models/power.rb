class Power < ApplicationRecord
    has_many :heroines through: :heroinepower
end
