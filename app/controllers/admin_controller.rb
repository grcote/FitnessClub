class AdminController < ApplicationController

before_filter {
  }

  def index
    render :admin_index
  end

  
  def login
    render :admin_login
  end

  #Checking to see if user is in the database for login.
  def check_login

    if User.where({ :username => params[:username] }).first
      found_user = User.where({ :username => params[:username] }).first

        if found_user && found_user.password == params[:password]
          session[:property_admin_id] = found_user.id
          flash[:success] = "You successfully logged in!"
          redirect_to admin_index_path
          return
        else
          flash[:error] = "Wrong password, please try again."
          redirect_to admin_login_path
          return
        end
    
    else

      flash[:error] = "User doesn't exist, please try again."
      redirect_to admin_login_path
      return

    end

  end


  def logout
    session[:property_admin_id] = nil
    flash[:success] = "Logged out."
    redirect_to admin_login_path
  end

end  