class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review

  after_create {NotificationJob.perform_now self}
end
