class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :answer_set
      t.references :question
      t.string :given_answer, array: true, default: []
      t.timestamps
    end
  end
end
