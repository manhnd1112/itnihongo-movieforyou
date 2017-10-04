class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  has_many :photos
  has_many :comments, dependent: :destroy

  validates :title, presence: true
end
