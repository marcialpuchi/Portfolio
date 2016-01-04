class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :location
      t.date :start
      t.date :end
      t.string :short_description
      t.text :full_description

      t.timestamps null: false
    end
  end
end
