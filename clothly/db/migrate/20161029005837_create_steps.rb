class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer     :count
      t.text        :sub_image
      t.text        :caption
      t.references  :knowledge, index: true
      t.timestamps
    end
  end
end
