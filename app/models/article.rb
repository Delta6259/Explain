class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :upvote
end
