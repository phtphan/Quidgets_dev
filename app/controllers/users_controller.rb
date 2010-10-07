class UsersController < ApplicationController
  def update
    @user=User.update(params[:id],params[:user])
    if @user.save
      flash[:notice] = "Saved!"
    else
      msg=""
      @user.errors.each do |error|
        msg =msg + error.to_s + "<br/>"
      end
      flash[:error]=msg
    end
    redirect_to :controller => "profile"
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
end
