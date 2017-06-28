class ApplicationController < ActionController::Base
  rescue_from StandardError, with: :record_not_found
  rescue_from Exception, with: :record_not_found
  # rescue_from RoutingError, with: :record_not_found
  protect_from_forgery with: :exception
  include SessionsHelper

  def record_not_found
    render :template => "error.html.haml"
  end
end
