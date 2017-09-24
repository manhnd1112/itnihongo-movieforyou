class Country < ApplicationRecord
  has_many :movies
  has_many :actors
end
