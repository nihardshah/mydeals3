class CreateRetailers < ActiveRecord::Migration
  def change
    create_table :retailers do |t|
      t.string :retailer
      t.string :url
      t.string :description

      t.timestamps

    end
  end
end
