class CreateProfils < ActiveRecord::Migration[6.1]
  def change
    create_table :profils do |t|
      t.text :content
      t.references :item, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
