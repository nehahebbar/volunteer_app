class CreateListingSkills < ActiveRecord::Migration
  def change
    create_table :listing_skills do |t|
      t.integer :skill_id
      t.integer :listing_id

      t.timestamps null: false
    end
  end
end
