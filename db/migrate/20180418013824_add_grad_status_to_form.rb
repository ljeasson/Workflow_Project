class AddGradStatusToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :grad, :boolean
  end
end
