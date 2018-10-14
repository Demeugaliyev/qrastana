class CreatePlaints < ActiveRecord::Migration[5.2]
  def change
    create_table :plaints do |t|
      t.string :comment
      t.string :email

      t.timestamps
    end
  end
end
