class Feedback < ApplicationRecord
  enum state: [:not_read_yet, :read, :canceled]
end
