class User < ApplicationRecord
  has_many :reviews
  has_many :bookmarks
  has_many :movies, through: :bookmarks

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end
