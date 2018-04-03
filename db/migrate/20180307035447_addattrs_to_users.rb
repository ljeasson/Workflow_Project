class AddattrsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :Lname,  :string
    add_column :users, :Fname,  :string
    add_column :users, :email,  :string
    add_column :users, :psw,    :string
    add_column :users, :degree, :string
    add_column :users, :dept_id, :bigint
    add_column :users, :role_id, :bigint
    add_column :users, :form_id, :bigint
  end
end
