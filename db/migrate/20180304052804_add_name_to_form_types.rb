class AddNameToFormTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :form_types, :name, :string
  end
end
