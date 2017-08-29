class CreateAnswerSets < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_sets do |t|
      t.references :quiz
      t.string :candidate_name
      t.string :grade
      t.decimal :total_gained_marks
      t.timestamps
    end
  end
end
