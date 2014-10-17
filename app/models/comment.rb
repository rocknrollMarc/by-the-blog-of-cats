class Comment < ActiveRecord::Base
  acts_as_tree order: 'created_at DESC'
  belongs_to :user
  belongs_to :post
  belongs_to :commentable, :polymorphic => true
end
