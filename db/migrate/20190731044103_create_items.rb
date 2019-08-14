class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :type
      t.string :item_name
      t.boolean :has_read, default: false
      t.string :lend_to
      t.references :book
      t.timestamps
    end
  end
end
