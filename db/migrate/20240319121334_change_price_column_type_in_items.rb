class ChangePriceColumnTypeInItems < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :price, :decimal, precision: 5, scale: 0
  end
end
