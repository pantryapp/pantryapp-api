class CreateItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :store_category
      t.boolean :outofstock
      t.string :slug

      t.timestamps
    end
  end
end
