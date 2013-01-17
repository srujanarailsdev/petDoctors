class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :visitDate
      t.integer :customer_id
      t.integer :pet_id
      t.boolean :reminder
      t.text :visitReason
      t.integer :doctor_id

      t.timestamps
    end
  end
end
