class AddressesController < ApplicationController
  def index
    address = Address.all
    render json: address.to_json, status: 200
  end

  # def new
  #   address = Address.new
  #   render json: address.to_json, status: 200
  # end

  def show
    if Address.exists?(params[:id])
      address = Address.find(params[:id])
      render json: address.to_json, status: 200
    else
      render json: { error_msg: 'Address Not Found!', id: params[:id] }.to_json, status: 404
    end
  end


  def create
    address = Address.new  # need to be able to match to a valid user_id
    address.street_name = params[:street_name]
    address.city        = params[:city]
    address.state       = params[:state]
    address.zip         = params[:zip]
    address.save!
    render json: address
  end

  def update
    if Address.exists?(params[:id])
      address             = Address.find(params[:id])
      address.street_name = params.fetch(:street_name, address.street_name)
      address.city        = params.fetch(:city, address.city)
      address.state       = params.fetch(:state, address.state)
      address.zip         = params.fetch(:zip, address.zip)
      address.save!
      render json: address, status: 200
     else
      render json: { error_msg: 'Address Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def destroy
    if Address.exists?(params[:id])
      address = Address.find(params[:id])
      address.destroy
      message = "Address was deleted."
      render json: message, status: 200
    else
      render json: { error_msg: 'Address Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

end
