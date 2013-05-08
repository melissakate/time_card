class AddUserIdToTimeEntry < ActiveRecord::Migration
  def change
    add_column :time_entries, :user_id, :string
  end
end
