class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
    @items = Item.all
  end

  def create
    @order = Order.new(order_params)
    items = params[:item_id]
    quantities = params[:quantity]
    items_quantities = items.zip(quantities)
    items_quantities.each do |item_quantity|
      @order.item_orders.new(item_id: item_quantity[0], item_quantity: item_quantity[1])
    end

    if @order.save
      render :index
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit!
  end
end
