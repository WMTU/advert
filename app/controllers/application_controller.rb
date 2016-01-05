class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
  rescue_from CanCan::AccessDenied do |exception|
      render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
      ## to avoid deprecation warnings with Rails 3.2.x (and incidentally using Ruby 1.9.3 hash syntax)
      ## this render call should be:
      # render file: "#{Rails.root}/public/403", formats: [:html], status: 403, layout: false
    end
end
