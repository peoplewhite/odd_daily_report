class RemoveProblemIdFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :problem_id, :integer
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
  end
end
