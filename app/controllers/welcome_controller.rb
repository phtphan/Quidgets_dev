require "feedzirra"
class WelcomeController < ApplicationController
  def index
    if logged_in?
      redirect_to :controller =>"control_panel"
    end    
  end
  
end
