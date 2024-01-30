class AddAgeToProfils < ActiveRecord::Migration[6.1]
  def change
    add_column :profils, :age, :float
  end
end
