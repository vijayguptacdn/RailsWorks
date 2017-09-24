class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :total_amount_cents
      t.datetime :purchased_at	

      t.timestamps null: false
    end
  end
end
