class AddImageUrlToToys < ActiveRecord::Migration[7.1]
  def change
    add_column :toys, :image_url, :string
  end
end
