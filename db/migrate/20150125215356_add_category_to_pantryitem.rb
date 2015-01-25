class AddCategoryToPantryitem < ActiveRecord::Migration
  def change
    add_column :pantryitems, :category, :string
  end
end
