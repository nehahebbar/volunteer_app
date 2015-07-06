class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.text :description
      t.string :cause
      t.string :contact

      t.timestamps null: false
    end
  end
end
