class Question < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable

  validates_presence_of :title, :body
end
