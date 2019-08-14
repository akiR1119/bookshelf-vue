class AddColumnToItems < ActiveRecord::Migration[5.2]
  def change
    change_table :items do |t|
      t.string :author
      t.string :genre
    end
  end
end
