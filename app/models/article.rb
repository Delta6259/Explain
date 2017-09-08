class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  # validates :category, presence: false
end
