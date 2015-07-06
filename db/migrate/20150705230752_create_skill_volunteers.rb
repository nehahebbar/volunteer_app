class CreateSkillVolunteers < ActiveRecord::Migration
  def change
    create_table :skill_volunteers do |t|
      t.integer :skill_id
      t.integer :volunteer_id

      t.timestamps null: false
    end
  end
end
