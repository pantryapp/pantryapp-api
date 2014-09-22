class CreatePantryitems < ActiveRecord::Migration
  def change
    create_table :pantryitems do |t|
      t.string :name
      t.boolean :outofstock
      t.string :slug

      t.timestamps
    end
  end
end
