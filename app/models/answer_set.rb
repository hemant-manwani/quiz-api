class AnswerSet < ApplicationRecord
  # associations
  has_many :answers 
  has_many :questions, through: :answers
  belongs_to :quiz

  # valdiations
  validates :quiz_id, :candidate_name, presence: true
  validates :grade, :total_gained_marks, presence: true, on: :update
end
