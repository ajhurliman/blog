class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :title, uniqueness: true
  validates :title, :length => {:minimum => 5}
  has_many :comments
end
