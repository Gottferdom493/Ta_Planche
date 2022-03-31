class CreateFamilles < ActiveRecord::Migration[6.1]
  def change
    create_table :familles do |t|
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
