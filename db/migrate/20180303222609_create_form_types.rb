class CreateFormTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :form_types do |t|

      t.timestamps
    end
  end
end
