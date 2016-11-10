class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.boolean :is_completed

      t.timestamps
    end
  end
end
