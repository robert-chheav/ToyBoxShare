class DeleteUserIdfromToy < ActiveRecord::Migration[7.1]
  def change
    remove_column :toys, :owner_id, :integer
  end
end
