class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id, :question_id, null: false
      t.boolean :best_answer
      t.string :text, null: false

      t.timestamps null: false
    end
  end
end
