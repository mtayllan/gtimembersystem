class CreateParticipations < ActiveRecord::Migration[5.1]
  def change
    create_table :participations do |t|
      t.references :event, :user
      t.timestamps
    end
  end
end
