class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, default: "user"
    add_column :users, :given_name, :string
    add_column :users, :surname, :string
    add_column :users, :school_email, :string
    add_column :users, :grad_year, :integer
    add_column :users, :school, :string
    add_column :users, :title, :string
    add_column :users, :phone, :integer
  end
end
