class Question < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates_presence_of :title, :body
end
