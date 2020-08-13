class AddColumnToHeroine < ActiveRecord::Migration[5.1]
  def change
    add_column :heroines, :heroine_power_id, :integer
  end
end
