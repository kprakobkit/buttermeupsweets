class OrdersController < ApplicationController
  def index
  end

  def new
    @items = Item.all
    @order = Order.new
  end

  def create
    @order = Order.new
    @items = Item.all
    render :new
  end
end
