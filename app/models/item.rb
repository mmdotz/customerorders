class Item < ActiveRecord::Base
  has_many :orders
  has_many :users, through: :orders
  validates :price, :qty, :desc
end
