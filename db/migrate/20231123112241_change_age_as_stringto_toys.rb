class ChangeAgeAsStringtoToys < ActiveRecord::Migration[7.1]
  def change
    change_column :toys, :age, :string
  end
end
