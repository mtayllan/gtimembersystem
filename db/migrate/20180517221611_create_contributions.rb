class CreateContributions < ActiveRecord::Migration[5.1]
  def change
    create_table :contributions do |t|
      t.references :project, :user
      t.timestamps
    end
  end
end
