class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :problem_id
      t.string :content
      t.string :user_id

      t.timestamps
    end
  end
end
