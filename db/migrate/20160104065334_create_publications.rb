class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :location
      t.date :publication_date
      t.string :short_description
      t.text :full_description
      t.string :website

      t.timestamps null: false
    end
  end
end
