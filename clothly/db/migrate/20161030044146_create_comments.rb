class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text       :text
      t.references :user, index: true
      t.references :knowledge, index: true
      t.timestamps
    end
  end
end
