class AddIsCompletedToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :is_completed, :boolean, default: false
  end
end
