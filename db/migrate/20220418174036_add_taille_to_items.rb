class AddTailleToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :taille, :string
  end
end
