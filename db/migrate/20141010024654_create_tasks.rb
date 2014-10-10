class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :message

      t.timestamps
    end
  end
end
