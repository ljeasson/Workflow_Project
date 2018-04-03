class AddNameToFormFields < ActiveRecord::Migration[5.1]
  def change
    add_column :form_fields, :name, :string
  end
end
