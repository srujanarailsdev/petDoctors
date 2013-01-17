class Pet < ActiveRecord::Base
  
  attr_accessible :age, :breed, :customer, :dateApp, :petName, :reason, :type, :weight
end
