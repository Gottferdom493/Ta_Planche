class AddDateNaissanceToProfils < ActiveRecord::Migration[6.1]
  def change
    add_column :profils, :date_naissance, :date
  end
end
