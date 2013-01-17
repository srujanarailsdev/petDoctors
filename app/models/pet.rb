class Pet < ActiveRecord::Base
  validates_date :dateApp, :on_or_after => lambda { Date.current }
  attr_accessible :age, :breed, :customer, :dateApp, :petName, :reason, :type, :weight
end
