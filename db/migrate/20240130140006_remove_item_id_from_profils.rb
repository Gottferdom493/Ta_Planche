class RemoveItemIdFromProfils < ActiveRecord::Migration[6.1]
  def change
    remove_column :profils, :item_id, :bigint
  end
end
