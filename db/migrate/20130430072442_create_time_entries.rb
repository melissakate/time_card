class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.date :date
      t.time :time_in
      t.time :time_out
      t.text :accomplishments
      t.text :remarks

      t.timestamps
    end
  end
end
