class AddAdresseToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :adresse, :string
  end
end
