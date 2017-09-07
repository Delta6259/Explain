class AddVoteToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :vote, :integer
  end
end
