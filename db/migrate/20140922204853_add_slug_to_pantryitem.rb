class AddSlugToPantryitem < ActiveRecord::Migration
  def change
    add_column :pantryitems, :slug, :string
  end
end
