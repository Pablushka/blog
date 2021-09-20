class RemoveScoreFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :score, :integer
  end
end
