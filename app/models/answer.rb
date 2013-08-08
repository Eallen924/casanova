class Answer < ActiveRecord::Base
   attr_accessible :body

   belongs_to :user
   belongs_to :question
   has_many :comments, as: :commentable

   validates_presence_of :body
end
