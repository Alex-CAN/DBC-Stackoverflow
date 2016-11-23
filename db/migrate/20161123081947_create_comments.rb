class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.string :text, null: false
      t.references :commentable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
