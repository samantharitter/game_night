class SessionsController < ApplicationController

  def create
    ref = Referee.from_omniauth(env["omniauth.auth"])
    session[:ref_id] = ref.id
    redirect_to root_url
  end

  def destroy
    session[:ref_id] = nil
    redirect_to root_url
  end
end
