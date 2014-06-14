class UserController < ApplicationController

  before_action :authenticate_user!

  def new  
  end

  def edit
    @user = User.find[params(:id)]
  end


end
