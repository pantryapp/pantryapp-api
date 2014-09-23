class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :name
      t.string :slug
      t.integer :pantryitem_id

      t.timestamps
    end
  end
end
