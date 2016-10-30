class AddLikesCountToKnowledges < ActiveRecord::Migration
  def change
    add_column :knowledges, :likes_count, :integer, default: 0
  end
end
