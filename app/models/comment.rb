class Comment < ActiveRecord::Base
  attr_accessible :text
  belongs_to :commentable, polymorphic: true

  validate :text, presence: true
end
