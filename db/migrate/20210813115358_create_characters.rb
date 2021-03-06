class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :image
      t.string :name
      t.integer :age
      t.integer :weight
      t.text :history
      t.string :movies

      t.timestamps
    end
    add_index :characters, :name, unique: true
  end
end
