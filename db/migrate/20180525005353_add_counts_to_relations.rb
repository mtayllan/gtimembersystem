class AddCountsToRelations < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :participations_count, :integer, default: 0
    add_column :users, :participations_count, :integer, default: 0
    add_column :projects, :contributions_count, :integer, default: 0
    add_column :users, :contributions_count, :integer, default: 0
  end
end
