class ChangeZiptoString < ActiveRecord::Migration
  def change
    change_column(:addresses, :zip, :string, limit: 5)
  end
end
