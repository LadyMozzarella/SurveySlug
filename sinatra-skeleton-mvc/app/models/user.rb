require 'bcrypt'
class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password
  has_many :surveys
  has_many :responses

  before_save :encrypt_password

  def encrypt_password
  	self.password = Bcrypt::Password.create(self.password)
  end

  def authenticate_password(password)
  	Bcrypt::Password.new(self.password) == password
  end
end
