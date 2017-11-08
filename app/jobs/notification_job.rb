class NotificationJob < ApplicationJob
  include ActionView::Helpers::UrlHelper

  queue_as :default

  def perform obj
    routes = Rails.application.routes.url_helpers
    obj_class = obj.class.name
    obj_id = obj.id
    user_id = obj.to_id
    object = obj

    case obj_class
      when Comment.name
        review = obj.review
        receiver_id = review.user_id
        receiver = User.find_by id: receiver_id
        counter = receiver.not_read_notifications_count
        sender = obj.user.name
        message = I18n.t "notifications.job.has_comment"
        review_title = review.title
        review_path = routes.review_path(review)
        url = sender + message + review_title + '<br>'
        link = url.html_safe

        notification = Notification.create user_id: receiver_id,
          content: "#{sender} #{message} #{review_title}",
          link_to: review_path,
          target: obj_class,
          target_id: obj_id,
          isRead: false
        ActionCable.server.broadcast "notification_channel:#{receiver_id}",
          counter: counter + 1,
          content: "#{link_to link, review_path, "data-turbolinks": false}",
          id: notification.id

      when SuggestMovie.name
        user = User.find_by id: user_id
        counter = user.not_read_notifications_count
        sender = obj.sender.name
        message = I18n.t "notifications.job.has_suggest"
        movie = object.movie
        movie_title = movie.name
        movie_path = routes.movie_path(movie)
        url = sender + message + movie_title + '<br>'
        link = url.html_safe

        notification = Notification.create user_id: user_id,
          content: "#{sender} #{message} #{movie_title}",
          link_to: movie_path,
          target: obj_class,
          target_id: obj_id,
          isRead: false
        ActionCable.server.broadcast "notification_channel:#{user_id}",
          counter: counter + 1,
          content: "#{link_to link, movie_path, "data-turbolinks": false}",
          id: notification.id

      when Vote.name
        review_id = obj.votable_id
        review = Review.find_by id: review_id
        receiver_id = review.user_id
        receiver = User.find_by id: receiver_id
        counter = receiver.not_read_notifications_count
        sender_id = obj.voter_id
        sender = User.find_by id: sender_id
        message = I18n.t "notifications.job.has_like"
        review_title = review.title
        review_path = routes.review_path(review)
        url = sender + message + review_title + '<br>'
        link = url.html_safe

        notification = Notification.create user_id: receiver_id,
          content: "#{sender} #{message} #{review_title}",
          link_to: review_path,
          target: obj_class,
          target_id: obj_id,
          isRead: false
        ActionCable.server.broadcast "notification_channel:#{receiver_id}",
          counter: counter + 1,
          content: "#{link_to link, review_path, "data-turbolinks": false}",
          id: notification.id
      else
        return nil
    end
  end
end
