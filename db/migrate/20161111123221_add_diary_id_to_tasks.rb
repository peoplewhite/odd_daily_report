class AddDiaryIdToTasks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :diary, foreign_key: true
  end
end
