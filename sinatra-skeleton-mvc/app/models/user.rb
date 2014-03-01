require 'bcrypt'
class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password
  has_many :surveys
  has_many :responses

  include BCrypt

  before_save :encrypt_password

  def encrypt_password
  	p self.password
  	self.password = BCrypt::Password.create(self.password) 
  	p self
  end

  def authenticate_password(password)
  	p "I am gere"
  end
end
