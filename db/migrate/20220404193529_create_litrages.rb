class CreateLitrages < ActiveRecord::Migration[6.1]
  def change
    create_table :litrages do |t|
      t.integer :kg
      t.integer :debutant
      t.integer :intermediaire
      t.integer :confirme

      t.timestamps
    end
  end
end
