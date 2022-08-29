class RenameAdresseToAddress < ActiveRecord::Migration[6.1]
  def change
    rename_column :items, :adresse, :address
  end
end
