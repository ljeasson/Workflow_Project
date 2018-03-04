class AddRequiredToFormFields < ActiveRecord::Migration[5.1]
  def change
    add_column :form_fields, :required, :boolean
  end
end
