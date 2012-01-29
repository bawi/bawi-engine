class CreateBawiComments < ActiveRecord::Migration
  def change
    create_table :bawi_comments do |t|
      t.integer :board_id, null: false
      t.integer :user_id, null: false
      t.integer :article_id, null: false
      t.integer :comment_no, null: false
      t.text :body, null: false

      t.timestamps
    end

    add_index :bawi_comments, [:board_id, :article_id]
    add_index :bawi_comments, [:board_id, :comment_no], unique: true
    add_index :bawi_comments, [:user_id, :id]
  end
end
