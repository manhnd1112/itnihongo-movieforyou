class Feedback < ApplicationRecord
  enum state: [:not_read_yet, :read, :canceled]

  belongs_to :user
end
