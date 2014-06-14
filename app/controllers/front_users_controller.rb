class FrontUsersController < ApplicationController

  def new
  end

  def edit
    @user = current_user
  end
end
