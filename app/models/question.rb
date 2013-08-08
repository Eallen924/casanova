class Question < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :user
  has_many :comments, as: :commentable

  validates :title, presence: true
  validates :body, presence: true
end
