# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'c2accb157cd7a65a3cb0dfc826b5a072'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password

  protected
  def admin_only
    # only hits the db if session has a value in it, then it
    # double checks that it matches a userid
    if session[:admin]
      unless User.find_by_id(session[:admin])
      flash[:notice] = "Your id was not found"
      session[:admin] = nil
      redirect_to :controller => 'admin', :action => 'login'
      end
    else
      flash[:notice] = "You must be logged on to view that page"
      redirect_to :controller => 'admin', :action => 'login'
    end
  end
end

