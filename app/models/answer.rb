class Answer < ApplicationRecord
  # associations
  belongs_to :question
  belongs_to :answer_set

  # validation
  validates :given_answer, :question, :answer_set, presence: true
  validate :quiz_timeout
  validates_uniqueness_of :question, scope: :answer_set

  def quiz_timeout
    time = Time.now - answer_set.quiz.created_at
    errors.add(:base, "Quiz timeout") if time > answer_set.quiz.questions.sum(:time_of_question)*60
  end
end
