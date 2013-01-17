class Profile < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :type, :zipcode
end

class Doctor < Profile
  belongs_to :user
end

class Receptionist < Profile
  belongs_to :user
end

class Customer < Profile
  belongs_to :user
  has_many :pets
end
