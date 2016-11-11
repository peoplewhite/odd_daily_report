class AddDiaryIdToProblems < ActiveRecord::Migration[5.0]
  def change
    add_reference :problems, :diary, foreign_key: true
  end
end
