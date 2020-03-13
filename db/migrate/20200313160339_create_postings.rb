class CreatePostings < ActiveRecord::Migration[6.0]
  def up
    create_table :postings do |t|
      t.text :text
      t.bigint :parent_id, null: true

      t.timestamps
    end
  end

  def down
    drop_table :postings
  end
end
