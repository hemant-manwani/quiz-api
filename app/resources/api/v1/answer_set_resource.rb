module Api
  module V1    
    class AnswerSetResource < JSONAPI::Resource
      attributes :candidate_name, :grade, :total_gained_marks
      has_one :quiz
      has_many :answers
    end
  end
end
