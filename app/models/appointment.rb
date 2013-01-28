class Appointment < ActiveRecord::Base
  attr_accessible :customer_id, :doctor_id, :pet_id, :reminder, :visitDate, :visitReason
  validates :customer_id, :doctor_id, :pet_id, :reminder, :visitReason, presence: true
  belongs_to :customer, :foreign_key => 'customer_id', :class_name => 'Customer'
  belongs_to :doctor, :foreign_key => 'doctor_id', :class_name => 'Doctor'
  
  def doctor_name
      doctor.try(:name)
    end
    
    def doctor_name=(name)
      self.doctor = Doctor.find_or_create_by_name(name) if name.present?
    end
  
end
