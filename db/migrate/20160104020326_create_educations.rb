class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :institution
      t.string :degree
      t.date :start
      t.date :end
      t.string :short_description
      t.text :full_description

      t.timestamps null: false
    end
  end
end
