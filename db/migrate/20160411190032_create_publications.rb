class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.date :publication_date
      t.text :synopsis
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
