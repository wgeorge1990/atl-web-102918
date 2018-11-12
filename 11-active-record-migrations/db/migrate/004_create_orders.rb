class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :address_id
      t.integer :item_id
      t.integer :user_id
      t.integer :quantity
    end
  end
end
