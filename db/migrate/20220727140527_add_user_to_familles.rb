class AddUserToFamilles < ActiveRecord::Migration[6.1]
  def change
    add_reference :familles, :user, index: true
  end
end
