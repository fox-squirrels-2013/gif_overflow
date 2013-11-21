class DropVoteCount < ActiveRecord::Migration
  def change
    remove_column :gifs, :vote_count
  end
end
