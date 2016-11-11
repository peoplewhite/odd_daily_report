class RemoveUserIdFromProblems < ActiveRecord::Migration[5.0]
  def change
    remove_column :problems, :user_id, :string
  end
end
