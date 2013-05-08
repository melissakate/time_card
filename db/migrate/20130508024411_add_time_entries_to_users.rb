class AddTimeEntriesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :time_enrty, :id
  end
end
