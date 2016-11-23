class Votes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :votable_id
      t.integer :user_id, :upvote, null: false

      t.timestamps
    end
  end
end
