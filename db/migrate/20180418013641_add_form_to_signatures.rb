class AddFormToSignatures < ActiveRecord::Migration[5.1]
  def change
    add_reference :signatures, :form, foreign_key: true
  end
end
