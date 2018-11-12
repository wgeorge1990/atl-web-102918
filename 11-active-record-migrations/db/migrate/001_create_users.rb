class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |table|
      table.string :first_name
      table.string :last_name
      table.date :birthday
      table.string :email, null: false
      table.integer :age
    end
  end
end
