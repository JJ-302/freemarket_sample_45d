class ListingsController < ApplicationController

  before_action :set_profile, only: [:show, :destroy]

  def index
    @product = Product.all
  end

  def show
  end

  def destroy
    if @product.user_id == current_user.id
      @product.destroy
      redirect_to user_listings_path user_id: current_user.id
    else
      redirect_to user_listings_path user_id: current_user.id
    end
  end

  def update
  end

  def in_progress
    @product = Product.all
    # @product = current_user.items.where(status: "in_progress").where(status: "listing").reverse_order.page(params[:page]).per(4)
  end
  def sold
    @product = Product.all
    # @product = current_user.items.where(status: "sold").where(status: "listing").reverse_order.page(params[:page]).per(4)
  end

  private

  def set_profile
    @product = Product.find(params[:id])
  end

end
