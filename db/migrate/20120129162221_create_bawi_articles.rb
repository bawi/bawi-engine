class CreateBawiArticles < ActiveRecord::Migration
  def change
    create_table :bawi_articles do |t|
      t.integer :board_id, null: false
      t.integer :user_id, null: false
      t.integer :article_no, null: false
      t.integer :parent_no, null: false
      t.integer :thread_no, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.integer :reads_count, null: false, default: 0
      t.integer :comments_count, null: false, default: 0
      t.integer :likes_count, null: false, default: 0
      t.integer :favorites_count, null: false, default: 0

      t.timestamps
    end

    add_index :bawi_articles, [:board_id, :article_no], :unique => true
    add_index :bawi_articles, [:board_id, :thread_no]
    add_index :bawi_articles, [:user_id, :id]
    add_index :bawi_articles, [:board_id, :reads_count]
    add_index :bawi_articles, [:board_id, :comments_count]
    add_index :bawi_articles, [:board_id, :likes_count]
    add_index :bawi_articles, [:board_id, :favorites_count]
  end
end
