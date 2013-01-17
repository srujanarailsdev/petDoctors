class Profile < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :type, :zipcode, :user_id

  def type?(type)
    self.type == type
  end
end
