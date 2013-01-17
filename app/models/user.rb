class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :profile
  validates_presence_of :username
  has_one :profile
  has_many :appointments, :through => :profile


  def type?(type)
    self.profile.type == type
  end

  private
  # attr_accessible :title, :body
end
