class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.references :upvote, foreign_key: true

      t.timestamps
    end
  end
end
