class MovieType < ApplicationRecord
  belongs_to :movie
  belongs_to :type
end
