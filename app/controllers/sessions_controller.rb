class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = Vendor.find_by_name(params[:name])
    if @user && (@user.password == (params[:password]))
      session[:user_id] = @user.id
      #session[:transaction_id] = @user.transactions.create.id
      redirect_to transactions_url, notice: 'Welcome back!'
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
  
end