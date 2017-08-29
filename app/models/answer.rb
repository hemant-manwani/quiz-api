class Answer < ApplicationRecord
	# associations
  belongs_to :question
  belongs_to :answer_set

  # validation
  validates :given_answer, :question, :answer_set, presence: true
end
