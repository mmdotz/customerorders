class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  # validates :user_id, :item_id, :presence => true
end
