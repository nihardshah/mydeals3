class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tags_name

      t.timestamps

    end
  end
end
