class CreateTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :transfers do |t|
      t.text :description
      t.integer :category 
      t.integer :price_cents, :default => 0

      t.timestamps
    end
  end
end
