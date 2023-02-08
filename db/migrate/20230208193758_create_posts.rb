class CreatePosts < ActiveRecord::Migration[7.0]
  def up
    create_table :posts do |t|
      t.text :text
      t.datetime :publication_date
      t.integer :likes_count

      t.timestamps
    end
  end

  def down
    remove_table :posts
  end
end
