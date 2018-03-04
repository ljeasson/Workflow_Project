class AddFieldTypeToFormFields < ActiveRecord::Migration[5.1]
  def change
    add_column :form_fields, :field_type, :string
  end
end
