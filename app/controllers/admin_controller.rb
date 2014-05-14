# -*- encoding: utf-8 -*-
class AdminController < ApplicationController


before_filter :check_admin, :except => [:login, :enter]


def login
  session[:admin] = true
  redirect_to admin_path
end

def index
end

def enter
  if params[:login] == "karcia" && params[:password] == "kotek"
    session[:admin] == true
    session[:account_type] = "Admin"
    redirect_to admin_path
  else
    flash[:alert] = "Niepoprawne dane."
    redirect_to admin_login_path
  end
end

def logout
  session[:logout_requested] = true
  session[:admin] = false
  redirect_to admin_login_path
end

protected

def check_admin  
  if session[:admin] != true
    redirect_to admin_login_path
  end
end

end
