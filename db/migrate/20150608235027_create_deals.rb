class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :name
      t.string :tag_line
      t.integer :retailer_id
      t.string :description
      t.integer :user_id

      t.timestamps

    end
  end
end
