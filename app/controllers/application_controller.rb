class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_author

  def authorized
    redirect_to login_path unless logged_in?
  end

  def current_author
    if session[:author_id]
      current_author = Author.find(session[:author_id])
    end
  end

  def logged_in?
    if current_author != nil
      true
    else
      false
    end
  end 
  
  def landing
    render "/layouts/landing.html.erb"
  end

end
