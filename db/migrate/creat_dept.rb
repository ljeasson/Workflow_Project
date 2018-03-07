class CreateDept < ActiveRecord::Migration[5.1]
  def change
    create_table :dept do |t|

      t.bigint :dept_id
      t.string :name


      t.timestamps
    end
  end
end
