class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :user, index:true
      t.references :knowledge, index:true
      t.integer :likes_count, default: 0
      t.timestamps
    end
  end
end
