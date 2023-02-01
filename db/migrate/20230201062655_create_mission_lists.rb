class CreateMissionLists < ActiveRecord::Migration[6.1]
  def change
    create_table :mission_lists do |t|
      t.text :task
      t.datetime :start_date
      t.datetime :due_date

      t.timestamps
    end
  end
end
