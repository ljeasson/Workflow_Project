class AddProcessedToSignatures < ActiveRecord::Migration[5.1]
  def change
    add_column :signatures, :processed, :boolean
  end
end
