class Appointment < ActiveRecord::Base
  attr_accessible :customer_id, :doctor_id, :pet_id, :reminder, :visitDate, :visitReason
  validates :customer_id, :doctor_id, :pet_id, :reminder, :visitReason, presence: true
  belongs_to :customer, :foreign_key => 'customer_id', :class_name => 'Customer'
  belongs_to :doctor, :foreign_key => 'doctor_id', :class_name => 'Doctor'
end
