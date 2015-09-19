class UsersController < ApplicationController
  def index
    # render text: "params : #{params.inspect}"
    users = User.all
    render json: users.to_json, status: 200
  end

  # def new
  #   user = User.new
  #   render json: user.to_json, status: 200
  # end

  def show
  # render text: "params : #{params.inspect}"
    if User.exists?(params[:id])
      user = User.find(params[:id])
      render json: user.to_json, status: 200
    else
      render json: { error_msg: 'User Not Found!', id: params[:id] }.to_json, status: 404
    end
  end


  def items
    user = User.find(params[:id])
    render json: user.items.to_json, status: 200
  end

  def create
    #For create to work, we must *require* that a parameter is sent with the name ':user.id'
      user             = User.new
      user.first_name  = params[:first_name]
      user.last_name   = params[:last_name]
      user.age         = params[:age]
      user.save!
      render json: user, status: 200
  end

  def update
    if User.exists?(params[:id])
      user            = User.find(params[:id])
      user.first_name = params[:first_name]
      user.last_name  = params[:last_name]
      user.age        = params[:age]
      user.save!
      render json: user, status: 200
    else
      render json: { error_msg: 'User Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def destroy
    if User.exists?(params[:id])
      user            = User.find(params[:id])
      user.destroy
      user.save
      message         = "User was deleted."
      render json: message, status: 200
    else
      render json: { error_msg: 'User Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

end

