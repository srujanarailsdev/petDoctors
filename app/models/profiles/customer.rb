class Customer < Profile
  belongs_to :user
  has_many :pets
  has_many :appointments
end
