class AddFormTypeIdToFormFields < ActiveRecord::Migration[5.1]
  def change
    add_column :form_fields, :form_type_id, :bigint
  end
end
