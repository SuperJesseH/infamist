class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :list_items do |t|
      t.integer :list_id
      t.integer :item_id
      t.string :reason
      t.integer :rank

      t.timestamps
    end
  end
end
