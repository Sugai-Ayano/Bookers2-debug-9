class RemovePostIdFromFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :book_id, :integer
    remove_column :favorites, :post_id, :integer
  end
end
