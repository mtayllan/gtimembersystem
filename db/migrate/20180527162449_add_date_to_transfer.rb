class AddDateToTransfer < ActiveRecord::Migration[5.1]
  def change
    add_column :transfers, :date, :date
  end
end
