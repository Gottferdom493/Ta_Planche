class AddMarqueToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :marque, :string
  end
end
