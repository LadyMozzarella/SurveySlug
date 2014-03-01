require 'bcrypt'
class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password
  has_many :surveys
  has_many :responses

  include BCrypt

  before_save :encrypt_password

  def encrypt_password
  	self.password = BCrypt::Password.create(self.password) 
  end

  def authenticate_password(password)
  	BCrypt::Password.new(self.password) == password
  end
end
