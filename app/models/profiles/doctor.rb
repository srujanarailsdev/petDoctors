class Doctor < Profile
  belongs_to :user
  attr_accessible :school, :practiseYears
  has_many :appointments
end
