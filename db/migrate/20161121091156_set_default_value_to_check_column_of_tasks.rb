class SetDefaultValueToCheckColumnOfTasks < ActiveRecord::Migration[5.0]
  def up
    change_column :tasks, :is_checked, :boolean, :default => false
  end
  def down
    change_column :tasks, :is_checked, :boolean, :default => nil
  end
end
