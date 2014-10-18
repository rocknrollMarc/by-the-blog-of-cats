class Comment < ActiveRecord::Base
  # acts_as_tree
  belongs_to :user
  belongs_to :post
  belongs_to :commentable, :polymorphic => true
end
