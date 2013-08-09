class Vote < ActiveRecord::Base
  attr_accessible :up, :user_id, :votable_id, :votable_type

  belongs_to :user
  belongs_to :votable, polymorphic: true

  validates_presence_of :votable_id, :user_id
  validates :user_id, :uniqueness => {:scope => :votable_id}
end
