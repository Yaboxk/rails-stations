class CreateSchedule < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.references :movie, foreign_key: true
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
  
      t.timestamps
    end
  end
end
