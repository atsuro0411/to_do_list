class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :content, null: false
      t.boolean :is_completed, default: false
      t.datetime :due_date, null: false
      t.timestamps
    end
  end
end
