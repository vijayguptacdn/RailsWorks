class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.boolean :item_type
      t.string :item_category
      t.decimal :price, precision: 5, scale: 2
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
