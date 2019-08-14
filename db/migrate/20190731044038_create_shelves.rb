class CreateShelves < ActiveRecord::Migration[5.2]
  def change
    create_table :shelves do |t|
      t.string :shelf_name
      t.string :shelf_img
      t.text :description
      t.boolean :public, default: false
      t.references :user
      t.timestamps
    end
  end
end
