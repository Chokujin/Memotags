class CreateMemostags < ActiveRecord::Migration[5.2]
  def change
    create_table :memostags do |t|
      t.references :memos, foreign_key: true
      t.references :tags, foreign_key: true

      t.timestamps
    end
  end
end
