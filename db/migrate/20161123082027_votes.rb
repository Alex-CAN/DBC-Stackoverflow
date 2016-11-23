class Votes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id, :upvote, null: false
      t.references :votable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
