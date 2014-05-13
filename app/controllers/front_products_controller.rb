# -*- encoding: utf-8 -*-
class FrontProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end
end
