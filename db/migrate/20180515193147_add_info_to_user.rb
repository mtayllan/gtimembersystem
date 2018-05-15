class AddInfoToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :birth_date, :date
    add_column :users, :address, :string
    add_column :users, :postal_code, :string
    add_column :users, :city, :string
    add_column :users, :gender, :string
    add_column :users, :phone, :string
    add_column :users, :photo, :string
    add_column :users, :role, :string
  end
end
