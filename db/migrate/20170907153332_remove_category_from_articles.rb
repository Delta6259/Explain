class RemoveCategoryFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_reference :articles, :category, foreign_key: true
  end
end
