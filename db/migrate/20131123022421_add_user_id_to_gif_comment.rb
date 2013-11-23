class AddUserIdToGifComment < ActiveRecord::Migration
  def change
    add_column :gifcomments, :user_id, :integer
  end
end
