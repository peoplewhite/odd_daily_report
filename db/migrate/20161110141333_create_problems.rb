class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.string :description
      t.string :user_id

      t.timestamps
    end
  end
end
