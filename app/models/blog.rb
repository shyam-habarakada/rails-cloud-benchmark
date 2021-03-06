class Blog < ActiveRecord::Base
  attr_accessible :description, :title
  
  has_many :posts
  has_many :comments, through: :posts
  has_and_belongs_to_many :users
end
