class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
