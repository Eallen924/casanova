class Question < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
end
