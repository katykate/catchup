class CreateCatchupItems < ActiveRecord::Migration[5.2]
  def change
    create_table :catchup_items do |t|
      t.string :content
      t.references :catchup_list, foreign_key: true

      t.timestamps
    end
  end
end
