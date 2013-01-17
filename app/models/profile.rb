class Profile < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :type, :zipcode
end
