class MovieActor < ApplicationRecord
  belongs_to :movie
  belongs_to :actor

  accepts_nested_attributes_for :actor
end
