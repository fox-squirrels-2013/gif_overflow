class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_count
      t.belongs_to :gif

      t.timestamps
    end
  end
end
