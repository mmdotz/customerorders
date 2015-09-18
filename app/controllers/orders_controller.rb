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
      order = order.find(params[:id])
      render json: order.to_json, status: 200
    else
      render json: { error_msg: 'user Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  # def create
  #   #For create to work, we must *require* that a parameter is sent with the name ':order.id'
  #   if params[:order_id].empty?
  #     err_msg = "One of the search parameters was empty or not found"
  #     render json: { error_msg: err_msg }.to_json, status: 422
  #   else
  #     order = Order.new
  #     order.task = params[:] #change this
  #     order.save!
  #     render json: order
  #   end
  # end

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
