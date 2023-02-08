class CreateLikesTable < ActiveRecord::Migration[7.0]
  def up
    create_table :likes do |t|
      t.references :post, index: true, null: false
      t.references :user, index: true

      t.timestamps
    end
  end
  
  def down
    destroy_table :likes
  end
end
