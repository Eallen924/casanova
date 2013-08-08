class Comment < ActiveRecord::Base
  attr_accessible :text
  belongs_to :commentable, polymorphic: true

  validates_presence_of :text
end
