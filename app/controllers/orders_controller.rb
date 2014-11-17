class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
    @items = Item.all
  end

  def create
    @order = Order.new(order_params)
    @items = Item.all
    @order.create_item_and_quantity(params[:item_id], params[:quantity])

    if @order.save
      flash.now[:notice] = "Order submitted successfully"
      render :index
    else
      flash.now[:error] = "Order was not submitted successfully"
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit!
  end
end
