class AddurlcolonneToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :url_achat, :text
  end
end
