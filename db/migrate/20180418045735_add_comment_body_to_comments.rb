class AddCommentBodyToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :body, :text
  end
end
