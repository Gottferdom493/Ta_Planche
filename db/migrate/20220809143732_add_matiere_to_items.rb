class AddMatiereToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :matiere, :string
  end
end
