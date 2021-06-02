class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :born
      t.integer :died
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
