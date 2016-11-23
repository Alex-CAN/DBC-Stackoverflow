class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id, :question_id, null: false
      t.integer :comment_id
      t.boolean :best_answer, null: false
      t.string :text, null: false

      t.timestamps
    end
  end
end
