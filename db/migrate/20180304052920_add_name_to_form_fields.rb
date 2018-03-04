class AddNameToFormFields < ActiveRecord::Migration[5.1]
  def change
    add_column :form_fields, :name, :string
  end
  add_index "form_fields", ["form_type_id"], :name => "index_form_fields_on_form_type_id"
end
