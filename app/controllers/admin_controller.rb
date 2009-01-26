class AdminController < ApplicationController
  layout "default.html"
  
  def login
    if request.post?
      # everyone is an admin at this point
      user = User.authenticate(params[:email], params[:password])
      if user
        session[:user_id] = user.id
        session[:user_name] = user.name
        session[:admin] = user.id
        redirect_to(:action => "index")
      else
        flash.now[:notice] = "Invalid email/password combination"
      end
    end
  end

  def logout
    session[:user_id] = nil
    session[:user_name] = nil
    session[:admin] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

  def index
  end

end
