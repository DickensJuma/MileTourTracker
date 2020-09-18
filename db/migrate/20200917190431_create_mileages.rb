class CreateMileages < ActiveRecord::Migration[5.2]
  def change
    create_table :mileages do |t|
      t.integer :user_id
      t.integer :fleet_id
      t.integer :distance
      

      t.timestamps
     end
    add_index :comments, :post_id
    add_foreign_key :comments, :users, column: :user_id
  end
end
