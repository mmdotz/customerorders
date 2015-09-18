class AddressesController < ApplicationController
  def index
    address = Address.all
    render json: address.to_json, status: 200
  end

  def new
    address = Address.new
    render json: address.to_json, status: 200
  end

  def show
    if Address.exists?(params[:id])
      address = Address.find(params[:id])
      render json: address.to_json, status: 200
    else
      render json: { error_msg: 'Address Not Found!', id: params[:id] }.to_json, status: 404
    end
  end


  def create
      address = Address.new
      address.street_name = params[:street_name]
      address.city = params[:city]
      address.state = params[:state]
      address.zip = params[:zip]
      address.save!
      render json: address
  end

  def update
    if Address.exists?(params[:id])
      address = Address.new
      address.street_name = params[:street_name]
      address.city = params[:city]
      address.state = params[:state]
      address.zip = params[:zip]
      address.save!
      render json: address, status: 200
    end # add else
  end

  def destroy
    if Address.exists?(params[:id])
      address = Address.find(params[:id])
      address.destroy
      message = "Address was deleted."
      render json: message, status: 200
    end
  end #add else
end
