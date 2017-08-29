class Quiz < ApplicationRecord
  # associations
  has_many :answer_sets
  has_many :answers, through: :answer_sets
  has_many :questions

  #validations
  validates :title, :description, :maximum_time, presence: true	 
end
