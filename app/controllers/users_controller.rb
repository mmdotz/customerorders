class UsersController < ApplicationController
  def index
    # render text: "params : #{params.inspect}"
    users = User.all
    render json: users.to_json, status: 200
  end

  def new
    user = User.new
    render json: user.to_json, status: 200
  end

  def show
  # render text: "params : #{params.inspect}"
    if User.exists?(params[:id])
      user = User.find(params[:id])
      render json: user.to_json, status: 200
    else
      render json: { error_msg: 'User Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  # def create
  #   #For create to work, we must *require* that a parameter is sent with the name ':user.id'
  #   if params[:user_id].empty?
  #     err_msg = "One of the search parameters was empty or not found"
  #     render json: { error_msg: err_msg }.to_json, status: 422
  #   else
  #     user = User.new
  #     user.?? = params[:??] #change this
  #     user.save!
  #     render json: user, status: 200
  #   end
  # end

  # def update
  #   if User.exists?(params[:id])
  #     user = User.find(params[:id])
  #     user.completed  = params[:completed]  #change this
  #     user.save
  #     render json: user, status: 200
  #   end
  # end

  # def destroy
  #   if User.exists?(params[:id])
  #     user = User.find(params[:id])
  #     user.destroy
  #     user.save
  #     render json: user, status: 200
  #   end
  # end

end

