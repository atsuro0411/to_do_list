class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :tasaks
      t.string :date

      t.timestamps
    end
  end
end
