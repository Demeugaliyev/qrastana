class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :inventory
      t.string :name
      t.string :buy_date
      t.string :category
      t.string :experation_date
      t.string :route_id
      t.string :which_user
      t.string :when_update
      t.string :create_date
      t.integer :plaints_sum

      t.timestamps
    end
  end
end
