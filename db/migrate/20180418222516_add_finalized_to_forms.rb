class AddFinalizedToForms < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :finalized, :boolean
  end
end
