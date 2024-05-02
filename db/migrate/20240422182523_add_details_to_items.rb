class AddDetailsToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :city, :string
    add_column :items, :postal_code, :string
    add_column :items, :country, :string
  end
end
