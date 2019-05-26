class Character < ApplicationRecord
  has_many :powers
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
end
