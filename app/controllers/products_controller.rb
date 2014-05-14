# -*- encoding: utf-8 -*-
class ProductsController < AdminController

  def index
    @products = Product.all
  end


  def new
    @product = Product.new
  end


  def edit
    @product = Product.find(params[:id])
  end


  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to products_path, notice: 'ok'
    else
      render action: "new"
    end
  end


  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(params[:product])
      if @product.save
        redirect_to products_path, notice: 'Produkt zostal zaktualizowany.'
      end
    else
      render action: "edit"
    end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end
end
