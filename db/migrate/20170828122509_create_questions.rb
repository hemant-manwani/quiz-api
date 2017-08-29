class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :quiz
      t.text :description
      t.decimal :marks
      t.time :time_of_question
      t.json :options
      t.string :correct_answer, array: true, default: []
      t.timestamps
    end
  end
end
