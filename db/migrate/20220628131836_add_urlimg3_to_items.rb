class AddUrlimg3ToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :url_img3, :text
  end
end
