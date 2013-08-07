class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation
  has_many :questions

  validates :username, :presence => true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "%{value} is not a valid email address." }
  validates :password, :presence => true
  validates :password_confirmation, :presence => true

  has_secure_password
end
