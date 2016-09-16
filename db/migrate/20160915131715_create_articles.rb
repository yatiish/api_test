class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :price
      t.string :description
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
