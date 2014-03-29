class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :original_question
      t.timestamps
    end
  end
end
