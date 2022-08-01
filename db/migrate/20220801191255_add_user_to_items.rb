class AddUserToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :user, index: true
  end
end
