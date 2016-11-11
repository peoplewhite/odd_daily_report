class AddProblemIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :problem, foreign_key: true
  end
end
