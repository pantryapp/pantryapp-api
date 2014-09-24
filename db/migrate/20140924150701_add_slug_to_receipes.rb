class AddSlugToReceipes < ActiveRecord::Migration
  def change
  	add_column :receipes, :slug, :string
  end
end
