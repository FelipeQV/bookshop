class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.text :description
      t.boolean :sold
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
