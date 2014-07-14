class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_referee
    # if ref_id is set, try to find the matching ref document.
    # if there is no matching document, un-set the ref_id.
    @current_referee ||= Referee.where(:_id => session[:ref_id]).first if session[:ref_id]
  end
  helper_method :current_referee
end
