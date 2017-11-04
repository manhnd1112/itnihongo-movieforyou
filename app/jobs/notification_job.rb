class NotificationJob < ApplicationJob
  include ActionView::Helpers::UrlHelper
  include ApplicationHelper

  queue_as :default

  def perform obj
    routes = Rails.application.routes.url_helpers
    obj_class = obj.class.name
    obj_id = obj.id
    user_id = obj.has_attribute?(:user_id) ? obj.user_id : obj.to_id
    object = obj
    user = User.find_by id: user_id
    counter = user.not_read_notifications_count
    time = obj.created_at.to_date

    case obj_class
      when Comment.name
        i18n = I18n.t "notifications.job.has_comment"
        review = obj.review
        review_title = review.title
        review_path = routes.review_path(review)
        sender = obj.sender.name
        url = sender + i18n + review_title + '<br>'
        link = url.html_safe

        Notification.create user_id: user_id,
          content: "#{sender} #{i18n} #{link_to review_title, review_path, "data-turbolinks": false}",
          link_to: review_path,
          target: obj_class,
          target_id: obj_id,
          isRead: false
        ActionCable.server.broadcast "notification_channel:#{user_id}",
          counter: counter + 1,
          content: "#{link_to link, review_path, "data-turbolinks": false}",
          id: obj_id

      when SuggestMovie.name
        i18n = I18n.t "notifications.job.has_suggest"
        movie = object.movie
        movie_title = movie.name
        movie_path = routes.movie_path(movie)
        sender = obj.sender.name
        url = sender + i18n + movie_title + '<br>'
        link = url.html_safe

        Notification.create user_id: user_id,
          content: "#{sender} #{i18n} #{movie_title}",
          link_to: movie_path,
          target: obj_class,
          target_id: obj_id,
          isRead: false
        ActionCable.server.broadcast "notification_channel:#{user_id}",
          counter: counter + 1,
          content: "#{link_to link, movie_path, "data-turbolinks": false}",
          id: obj_id
      else
        return nil
    end
  end
end
