class Address < ActiveRecord::Base
  belongs_to :user
  validates :zip, :length => { :is => 5 }
  validates :user, presence: true
end
