class CreateItems < ActiveRecord::Migration
  def change
    create_table  :items do |t|
      t.string    :name
      t.integer   :price,  null: false
      t.string    :desc

      t.timestamps null: false
    end
  end
end
