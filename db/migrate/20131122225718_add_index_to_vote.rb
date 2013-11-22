class AddIndexToVote < ActiveRecord::Migration
  def change
    add_index :votes, [:gif_id, :user_id], :unique => true
  end
end
