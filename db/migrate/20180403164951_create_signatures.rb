class CreateSignatures < ActiveRecord::Migration[5.1]
  def change
    create_table :signatures do |t|

      t.timestamps
    end
  end
end
