class Article < ApplicationRecord
  belongs_to :user
  has_many :reviews
  mount_uploader :photo, PhotoUploader
  # validates :category, presence: false
end
