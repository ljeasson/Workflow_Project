class AddIndexToFormFields < ActiveRecord::Migration[5.1]
  def change
    
    add_index :form_fields, :form_type_id
  end
end
