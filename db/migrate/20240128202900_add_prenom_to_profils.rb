class AddPrenomToProfils < ActiveRecord::Migration[6.1]
  def change
    add_column :profils, :prenom, :string
  end
end
