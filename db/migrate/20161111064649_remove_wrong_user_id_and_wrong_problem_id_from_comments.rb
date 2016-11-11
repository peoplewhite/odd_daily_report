class RemoveWrongUserIdAndWrongProblemIdFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :problem_id, :string
    remove_column :comments, :user_id, :string
  end
end
