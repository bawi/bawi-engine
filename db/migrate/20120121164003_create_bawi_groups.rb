class CreateBawiGroups < ActiveRecord::Migration
  def change
    create_table :bawi_groups do |t|
      t.integer :parent_id, null: false, default: 0
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :keyword, null: false
      t.integer :children_count, null: false, default: 0
      t.integer :boards_count, null: false, default: 0

      t.timestamps
    end
    add_index :bawi_groups, [:parent_id, :name]
    add_index :bawi_groups, [:user_id, :name]
    add_index :bawi_groups, :name
    add_index :bawi_groups, :keyword, :unique => true
  end
end
