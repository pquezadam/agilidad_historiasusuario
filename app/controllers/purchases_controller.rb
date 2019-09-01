class PurchasesController < ApplicationController
  before_action :authenticate_user!
  def create
    product_id: Product.find(:params[:product_id])
    Purchase.create(
      user_id: current_user.id,
      product_id: product.id
      
    )
    product.sold = true
    if product.save
      redirect_to products_path, notice: 'Producto comprado con exito!!'
    else
      redirect_to products_path, notice: 'No se pudo realizar la compra'
    end
  end

  def index
    if user.admin?
      @purchases = Purchase.all
    else
      redirect_to root_path, notice: 'No eres admin'
    end
  end
end
