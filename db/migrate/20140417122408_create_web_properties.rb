class CreateWebProperties < ActiveRecord::Migration
  def change
    create_table :web_properties do |t|
      t.string :name
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
