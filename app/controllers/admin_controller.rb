# -*- encoding: utf-8 -*-
class AdminController < ApplicationController

  before_filter :check_admin, :except => [:login, :enter]


  def login
  end

  def index
  end

  def enter
    if params[:login] == "karcia" && params[:password] == "kotek"
      #Rails.logger.info "Poprawne dane."
      session[:admin] = true
      flash[:notice] = "Poprawnie zalogowano."
      redirect_to admin_path
    else
      #Rails.logger.info "Niepoprawne dane."
      flash[:alert] = "Niepoprawne dane."
      redirect_to admin_login_path
    end
  end

  def logout
    session[:admin] = false
    flash[:notice] = "Wylogowano."
    redirect_to admin_login_path
  end

  protected

  def check_admin  
    #Rails.logger.info "Admin: #{session[:admin]}"
    if session[:admin] != true
      redirect_to admin_login_path
    end
  end

end
