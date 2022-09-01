class DropLitrages < ActiveRecord::Migration[6.1]
  def change
    drop_table :litrages
  end
end
