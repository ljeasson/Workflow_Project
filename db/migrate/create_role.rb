class CreateRole < ActiveRecord::Migration[5.1]
  def change
    create_table :role do |t|
      t.bigint :faculty
      t.bigint :role_id
      t.bigint :student
      t.bigint :admin

      t.timestamps
    end
  end
end
