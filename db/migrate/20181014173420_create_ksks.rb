class CreateKsks < ActiveRecord::Migration[5.2]
  def change
    create_table :ksks do |t|
      t.string :info
      t.integer :phone
      t.string :adress

      t.timestamps
    end
  end
end
