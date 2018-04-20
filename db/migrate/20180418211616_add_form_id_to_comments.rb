class AddFormIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :form, foreign_key: true
  end
end
