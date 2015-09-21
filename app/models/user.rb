class User < ActiveRecord::Base
  has_many  :orders, :dependent => :destroy
  has_one   :address, :dependent => :destroy
  has_many  :items, through: :orders
end
