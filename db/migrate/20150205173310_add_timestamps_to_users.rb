class AddTimestampsToUsers < ActiveRecord::Migration
  def change_table
    add_column(:users, :created_at, :datetime)
  end
end
