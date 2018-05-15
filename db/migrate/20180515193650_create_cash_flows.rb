class CreateCashFlows < ActiveRecord::Migration[5.1]
  def change
    create_table :cash_flows do |t|
      t.string :description
      t.boolean :type
      t.float :value

      t.timestamps
    end
  end
end
