class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.integer :estimated_hours
      t.string :location

      t.timestamps null: false
    end
  end
end
