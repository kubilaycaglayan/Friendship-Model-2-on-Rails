class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :friend_id
      t.boolean :confirmed, default: false

      t.timestamps
    end
    add_foreign_key :friends, :user, column: :friend_id
  end
end
