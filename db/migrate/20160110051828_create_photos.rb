class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.integer :state, default: 1
      t.integer :shop_id, null: false

      t.timestamps null: false
    end
  end
end
