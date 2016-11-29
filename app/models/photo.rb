class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :fans, :through => :likes, :source => :user
  has_many :usernames, :through => :comments, :source => :user
  validates :user_id, :presence => true
end
