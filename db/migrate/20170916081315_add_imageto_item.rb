class AddImagetoItem < ActiveRecord::Migration
  def change
  	add_column :items ,:image ,:string
  end
end
