class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :saved_answer
      t.belongs_to :user
      t.belongs_to :question
      t.timestamps
    end
  end
end
