class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  has_many :photos
  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :photos, allow_destroy: true

  validates :title, presence: true
end
