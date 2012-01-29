class CreateBawiBoards < ActiveRecord::Migration
  def change
    create_table :bawi_boards do |t|
      t.integer :group_id, null: false, default: 0
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :keyword, null: false
      t.integer :max_article_no, null: false, default: 0
      t.integer :max_comment_no, null: false, default: 0
      t.integer :articles_count, null: false, default: 0
      t.integer :comments_count, null: false, default: 0
      t.integer :bookmarks_count, null: false, default: 0

      t.timestamps
    end
  
    add_index :bawi_boards, :group_id
    add_index :bawi_boards, [:user_id, :name]
    add_index :bawi_boards, :keyword, unique: true
  end
end