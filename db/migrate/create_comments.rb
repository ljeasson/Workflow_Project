class CreateComments< ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|

      t.bigint :form_id
      t.string :content
      t.string :commentBy_webID

      t.timestamps
    end
  end
end
