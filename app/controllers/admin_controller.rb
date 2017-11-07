class AdminController < ActionController::Base
  before_action :authenticate_user!
  before_action :is_admin?
  before_action :set_locale

  protect_from_forgery with: :exception

  layout "admin"

  private
  def is_admin?
    redirect_to root_path unless current_user.is_admin?
  end

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = request.host.split('.').last
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end
end
