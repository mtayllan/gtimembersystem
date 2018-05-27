class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.float :value
      t.text :description
      t.string :client
      t.date :start_date
      t.date :end_date
      t.date :expected_date
      t.timestamps
    end
  end
end
