class AddUserIdtotoytable < ActiveRecord::Migration[7.1]
  def change
    add_column :toys, :user_id, :integer
  end
end
