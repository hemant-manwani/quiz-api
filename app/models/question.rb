class Question < ApplicationRecord
	# associations
  has_many :answers
  belongs_to :quiz

  #validations
  validates :quiz, :description, :marks, :time_of_question, :options, :correct_answer, presence: true
  validate :question_limit, :on => :create

  def question_limit
    if quiz.questions.count >= quiz.total_questions
      errors.add(:base, "Exceeded question limit")
    end
  end

end
