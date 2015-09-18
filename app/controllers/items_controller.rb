class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items.to_json, status: 200
  end

  def new
    item = Item.new
    render json: items.to_json, status: 200
  end

  def create
     item = Item.new
      item.name = params[:name]
      item.price = params[:price]
      item.desc = params[:desc]
      item.save!
      render json: item, status: 200
  end

  def update
    if Item.exists?(params[:id])
      item = Item.find(params[:id])
      item.desc  = params[:desc]
      item.save
      render json: item, status: 200
    end
  end

  def destroy
    if Item.exists?(params[:id])
      item = item.find(params[:id])
      item.destroy
      message = "Item was deleted."
      render json: message, status: 200
    end
  end
end
