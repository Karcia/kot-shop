class FrontUsersController < ApplicationController
  
  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user]) 
      redirect_to front_user_path(@user), notice: 'wszystko ok'
    else
      render action: "edit"
    end
  end
  
end
