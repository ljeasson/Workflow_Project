class AddPropertiesToForms < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :properties, :text
  end
end
