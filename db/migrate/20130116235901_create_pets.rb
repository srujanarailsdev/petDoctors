class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :customer_id
      t.string :petName
      t.string :petType
      t.string :breed
      t.integer :age
      t.decimal :weight
      t.datetime :dateApp
      t.text :reason

      t.timestamps
    end
  end
end
