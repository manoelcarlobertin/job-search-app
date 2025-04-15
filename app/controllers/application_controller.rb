class ApplicationController < ActionController::Base
  # before_action :autenticate_company! #......................O devise User NÃO SERVIRÁAAA
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  protected
  # Configure the permitted parameters for Devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :description ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :name, :description ])
  end

  # Set the locale based on the user's preference or default to English
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # Enable modern JavaScript features in Rails
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
