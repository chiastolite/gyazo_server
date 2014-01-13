class AddSlugToScreenshots < ActiveRecord::Migration
  def change
    add_column :screenshots, :slug, :string
    add_index  :screenshots, :slug, unique: true
  end
end
