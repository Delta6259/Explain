class Article < ApplicationRecord
  belongs_to :user
  # validates :category, presence: false
end
