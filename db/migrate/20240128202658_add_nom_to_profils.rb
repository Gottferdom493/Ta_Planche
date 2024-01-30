class AddNomToProfils < ActiveRecord::Migration[6.1]
  def change
    add_column :profils, :nom, :string
  end
end
