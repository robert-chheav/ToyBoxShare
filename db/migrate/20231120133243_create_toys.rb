class CreateToys < ActiveRecord::Migration[7.1]
  def change
    create_table :toys do |t|
      t.string :name
      t.float :price
      t.text :description
      t.text :location
      t.integer :age

      t.timestamps
    end
  end
end
