class CreateTombamentos < ActiveRecord::Migration
  def change
    create_table :tombamentos do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
