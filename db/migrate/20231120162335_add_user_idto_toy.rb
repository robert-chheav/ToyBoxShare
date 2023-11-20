class AddUserIdtoToy < ActiveRecord::Migration[7.1]
  def change
    add_column :toys, :owner_id, :integer
  end
end
