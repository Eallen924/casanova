class Question < ActiveRecord::Base
  attr_accessible :title, :body, :tag_list
  attr_accessor :tag_list
  belongs_to :user
  has_many :answers
  has_many :question_tags
  has_many :tags, through: :question_tags
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  before_save :create_tag_list

  validates_presence_of :title, :body

  def create_tag_list
    tag_list.split(' ').each { |tag| tags << Tag.find_or_create_by_title(tag.strip) }
  end
end
