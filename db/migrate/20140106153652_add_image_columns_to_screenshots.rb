class AddImageColumnsToScreenshots < ActiveRecord::Migration
  def change
    add_attachment :screenshots, :image
  end
end
