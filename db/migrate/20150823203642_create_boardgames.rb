class CreateBoardgames < ActiveRecord::Migration
  def change
    create_table :boardgames do |t|
      t.string :name
      t.integer :bgg_id
      t.string :year_published
      t.string :thumbnail

      t.timestamps null: false
    end
  end
end
