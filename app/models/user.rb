class User < ActiveRecord::Base
  has_many :questions

  validates :username, :presence => true
  validates :email,    :presence => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true

  has_secure_password
end
