# image migration: Create model
class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :name, null: false
      t.integer :category, default: 0
      t.text :description
      t.string :tags, array: true, default: []
      # created_at and updated_at.
      t.timestamps null: false
    end
  end
end
