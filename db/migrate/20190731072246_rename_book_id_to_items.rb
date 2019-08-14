class RenameBookIdToItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :book_id, :shelf_id
  end
end
