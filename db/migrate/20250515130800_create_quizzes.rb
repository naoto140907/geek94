class CreateQuizzes < ActiveRecord::Migration[7.1]
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.integer :correct_option
      t.string :country

      t.timestamps
    end
  end
end
