class CreateLitrages < ActiveRecord::Migration[6.1]
  def change
    create_table :litrages do |t|
      t.integer :kg
      t.float :debutant
      t.float :intermediaire
      t.float :confirme

      t.timestamps
    end
  end
end
