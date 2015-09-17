class User < ActiveRecord::Base
  has_many  :orders
  has_one   :address
  has_many  :items, through: :orders
end
