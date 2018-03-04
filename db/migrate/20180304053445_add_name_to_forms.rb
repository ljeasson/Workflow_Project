class AddNameToForms < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :name, :string
  end
end
