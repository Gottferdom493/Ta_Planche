class AddUrlimg2ToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :url_img2, :text
  end
end
