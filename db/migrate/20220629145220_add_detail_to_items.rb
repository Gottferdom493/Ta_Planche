class AddDetailToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :detail, :text
  end
end
