class ApplicationController < ActionController::Base
  # before_action :autenticate_company! #......................O devise User NÃO SERVIRÁAAA

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
