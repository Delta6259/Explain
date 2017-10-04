class Article < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  # validates :category, presence: false
end
