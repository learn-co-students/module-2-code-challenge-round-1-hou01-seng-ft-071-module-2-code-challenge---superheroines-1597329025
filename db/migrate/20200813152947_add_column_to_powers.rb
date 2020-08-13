class AddColumnToPowers < ActiveRecord::Migration[5.1]
  def change
    add_column :powers, :heroine_power_id, :integer
  end
end
