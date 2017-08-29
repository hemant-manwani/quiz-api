class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :description
      t.integer :maximum_time
      t.integer :level, default: 1
      t.integer :total_questions, default: 20
      t.timestamps
    end
  end
end
