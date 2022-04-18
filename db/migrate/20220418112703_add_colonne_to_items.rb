class AddColonneToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :url_image, :text
  end
end
