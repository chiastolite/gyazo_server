class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :gyazo_id
      t.string :name

      t.timestamps
    end
  end
end
