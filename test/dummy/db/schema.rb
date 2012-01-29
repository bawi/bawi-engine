# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120129163609) do

  create_table "bawi_articles", :force => true do |t|
    t.integer  "board_id",                       :null => false
    t.integer  "user_id",                        :null => false
    t.integer  "article_no",                     :null => false
    t.integer  "parent_no",                      :null => false
    t.integer  "thread_no",                      :null => false
    t.string   "title",                          :null => false
    t.text     "body",                           :null => false
    t.integer  "reads_count",     :default => 0, :null => false
    t.integer  "comments_count",  :default => 0, :null => false
    t.integer  "likes_count",     :default => 0, :null => false
    t.integer  "favorites_count", :default => 0, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "bawi_articles", ["board_id", "article_no"], :name => "index_bawi_articles_on_board_id_and_article_no", :unique => true
  add_index "bawi_articles", ["board_id", "comments_count"], :name => "index_bawi_articles_on_board_id_and_comments_count"
  add_index "bawi_articles", ["board_id", "favorites_count"], :name => "index_bawi_articles_on_board_id_and_favorites_count"
  add_index "bawi_articles", ["board_id", "likes_count"], :name => "index_bawi_articles_on_board_id_and_likes_count"
  add_index "bawi_articles", ["board_id", "reads_count"], :name => "index_bawi_articles_on_board_id_and_reads_count"
  add_index "bawi_articles", ["board_id", "thread_no"], :name => "index_bawi_articles_on_board_id_and_thread_no"
  add_index "bawi_articles", ["user_id", "id"], :name => "index_bawi_articles_on_user_id_and_id"

  create_table "bawi_boards", :force => true do |t|
    t.integer  "group_id",        :default => 0, :null => false
    t.integer  "user_id",                        :null => false
    t.string   "name",                           :null => false
    t.string   "keyword",                        :null => false
    t.integer  "max_article_no",  :default => 0, :null => false
    t.integer  "max_comment_no",  :default => 0, :null => false
    t.integer  "articles_count",  :default => 0, :null => false
    t.integer  "comments_count",  :default => 0, :null => false
    t.integer  "bookmarks_count", :default => 0, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "bawi_boards", ["group_id"], :name => "index_bawi_boards_on_group_id"
  add_index "bawi_boards", ["keyword"], :name => "index_bawi_boards_on_keyword", :unique => true
  add_index "bawi_boards", ["user_id", "name"], :name => "index_bawi_boards_on_user_id_and_name"

  create_table "bawi_comments", :force => true do |t|
    t.integer  "board_id",   :null => false
    t.integer  "user_id",    :null => false
    t.integer  "article_id", :null => false
    t.integer  "comment_no", :null => false
    t.text     "body",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "bawi_comments", ["board_id", "article_id"], :name => "index_bawi_comments_on_board_id_and_article_id"
  add_index "bawi_comments", ["board_id", "comment_no"], :name => "index_bawi_comments_on_board_id_and_comment_no", :unique => true
  add_index "bawi_comments", ["user_id", "id"], :name => "index_bawi_comments_on_user_id_and_id"

  create_table "bawi_groups", :force => true do |t|
    t.integer  "parent_id",      :default => 0, :null => false
    t.integer  "user_id",                       :null => false
    t.string   "name",                          :null => false
    t.string   "keyword",                       :null => false
    t.integer  "children_count", :default => 0, :null => false
    t.integer  "boards_count",   :default => 0, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "bawi_groups", ["keyword"], :name => "index_bawi_groups_on_keyword", :unique => true
  add_index "bawi_groups", ["name"], :name => "index_bawi_groups_on_name"
  add_index "bawi_groups", ["parent_id", "name"], :name => "index_bawi_groups_on_parent_id_and_name"
  add_index "bawi_groups", ["user_id", "name"], :name => "index_bawi_groups_on_user_id_and_name"

end
