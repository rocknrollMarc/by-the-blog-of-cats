class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :page
  has_many :comments
end
