class ApplicationController < ActionController::Base
  #protect_from_forgery

before_filter(:except => ["login", "logout", "check_login"]) {
    if session[:property_admin_id] == nil
        flash[:error] = "You must be logged in to see that page."
        redirect_to admin_login_path
        return
    end
}   

end
