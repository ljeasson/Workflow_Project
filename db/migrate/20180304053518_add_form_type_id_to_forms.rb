class AddFormTypeIdToForms < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :form_type_id, :bigint
  end
end
