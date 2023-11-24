class AddImageUrlToToys < ActiveRecord::Migration[7.1]
  def change
    add_column :toys, :picture_url, :string
  end
end
