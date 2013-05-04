class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # before_filter :determine_current_user
#   def determine_current_user
#     @user ||= Vendor.find_by_id(session[:user_id])
#   end

  helper_method :current_customer

  def who_is email
    Vendor.find_by_name(name)
  end

  def session_check
    if session[:user_id].nil?
      redirect_to login_url
      flash[:notice] = "Please login to view your account!"
    else
      true
    end 
  end

  def current_customer
    Vendor.find_by_id(session[:user_id])
  end
  
end
