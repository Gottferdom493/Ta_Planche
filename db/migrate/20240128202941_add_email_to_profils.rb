class AddEmailToProfils < ActiveRecord::Migration[6.1]
  def change
    add_column :profils, :email, :string
  end
end
