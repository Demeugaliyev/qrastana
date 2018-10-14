class CreateIkomeks < ActiveRecord::Migration[5.2]
  def change
    create_table :ikomeks do |t|
      t.string :info
      t.integer :phone
      t.string :adress

      t.timestamps
    end
  end
end
