class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter { |c| current_user.track unless current_user.nil? }
end
