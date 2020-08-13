class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

  validates :strength, inclusion: { in: ["Strong", "Weak", "Average"], message: "You must choose a strength between Strong, Weak, Average."}
  validates :power, uniqueness: { scope: :heroine_id, message: "Your Heroine already possesses this power!" }

end