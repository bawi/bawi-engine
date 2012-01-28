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

ActiveRecord::Schema.define(:version => 20120121164003) do

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
