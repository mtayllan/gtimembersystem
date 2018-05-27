class ChangeProjectValueField < ActiveRecord::Migration[5.1]
  def change
    rename_column :projects, :value, :price_cents
    change_column :projects, :price_cents, :integer , default: 0
  end
end
