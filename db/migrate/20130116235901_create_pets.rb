class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :customer
      t.string :petName
      t.string :type
      t.string :breed
      t.integer :age
      t.decimal :weight
      t.datetime :dateApp
      t.text :reason

      t.timestamps
    end
  end
end
