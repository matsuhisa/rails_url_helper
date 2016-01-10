class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.text :description
      t.integer :state, default: 1

      t.timestamps null: false
    end
  end
end
