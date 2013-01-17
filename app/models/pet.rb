class Pet < ActiveRecord::Base
  validates_presence_of :age, :breed, :customer_id, :dateApp, :petName, :reason, :petType, :weight
  validates_length_of :petName, :maximum => 35
  validates_length_of :breed, :maximum => 35
  attr_accessible :age, :breed, :customer_id, :dateApp, :petName, :reason, :petType, :weight
  belongs_to :customer
end
