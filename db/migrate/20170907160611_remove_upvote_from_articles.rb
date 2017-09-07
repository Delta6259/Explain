class RemoveUpvoteFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_reference :articles, :upvote, foreign_key: true
  end
end
