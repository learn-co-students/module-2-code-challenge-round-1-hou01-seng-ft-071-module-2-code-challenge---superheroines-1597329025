class AddStrengthToHeroinePower < ActiveRecord::Migration[5.1]
  def change
    add_column :heroine_powers, :strength, :string
  end
end
