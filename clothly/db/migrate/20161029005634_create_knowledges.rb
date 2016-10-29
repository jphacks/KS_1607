class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string  :title
      t.text    :image
      t.text    :detail
      t.text    :hint
      t.text    :concept
      t.references :user, index: true
      t.timestamps
    end
  end
end
