class HeroinePower < ActiveRecord::Migration[5.1]
  def change

    create_table :heroine_powers do |t|
      t.string :power_id
      t.string :heroine_id

      t.timestamps
    end
  end
end
