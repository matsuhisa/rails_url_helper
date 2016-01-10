class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :state, default: 1
      t.integer :shop_id, null: false

      t.timestamps null: false
    end
  end
end
