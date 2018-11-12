class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |table|
      table.integer :user_id
      table.string :street_name
      table.string :city
      table.string :state
      table.integer :zip
    end
  end
end
