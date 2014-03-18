class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include TheRole::Controller
  protect_from_forgery with: :exception

  def access_denied
    flash[:error] = t('the_role.access_denied')
    #redirect_to(:back)
    redirect_to root_path
  end

end
