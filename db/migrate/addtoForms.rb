class AddattrsToForms < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :form_status, :bigint
    add_column :forms, :com_id, :bigint
    add_column :forms, :user_webID, :string

  end
end
