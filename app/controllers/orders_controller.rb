class OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: orders.to_json, status: 200
  end

  def new
    order = Order.new
    render json: order.to_json, status: 200
  end

  def show
    if Order.exists?(params[:id])
      order = Order.find(params[:id])
      render json: order.to_json, status: 200
    else
      render json: { error_msg: 'user Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def create
      order = Order.new
      order.item_id = params[:item_id]
      order.user_id = params[:user_id]
      order.qty = params[:qty]
      order.save!
      render json: order
  end

  # def update
  #   if Order.exists?(params[:id])
  #     order = Order.find(params[:id])
  #     order.completed  = params[:completed]  #change this
  #     order.save
  #     render json: order, status: 200
  #   end
  # end

  # def destroy
  #   if Order.exists?(params[:id])
  #     order = Order.find(params[:id])
  #     order.destroy
  #     message = "Order was deleted."
  #     render json: message, status: 200
  #   end
  # end
end
