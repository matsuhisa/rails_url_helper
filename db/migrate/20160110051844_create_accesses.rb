class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.text :how_to
      t.string :holiday
      t.integer :shop_id, null: false

      t.timestamps null: false
    end
  end
end
