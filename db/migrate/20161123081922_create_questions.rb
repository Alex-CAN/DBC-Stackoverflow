class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id, null: false
      t.integer :comment_id
      t.string :text, null: false

      t.timestamps
    end
  end
end
