class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :type, :null => false
      t.string :name, :null => false
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :user_id, :null => false
      t.string :school
      t.integer :practiseYears

      t.timestamps
    end
  end
end
