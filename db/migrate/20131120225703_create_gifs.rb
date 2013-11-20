class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :title
      t.string :link
      t.integer :vote_count

      t.timestamps
    end

    create_table :gifcomments do |t|
      t.string :link
      t.belongs_to :gif

      t.timestamps
    end
  end
end
