class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :commentable_id
      t.string :text, null: false

      t.timestamps
    end
  end
end
