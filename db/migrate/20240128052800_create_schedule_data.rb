class CreateScheduleData < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_data do |t|
      t.string :title, :limit => 20, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.boolean :all_day_flg
      t.text :memo

      t.timestamps
    end
  end
end
