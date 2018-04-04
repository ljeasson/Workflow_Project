class AddUserUidToForms < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :users, :forms
  end
end
