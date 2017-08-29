module Api
  module V1
    class QuizResource < JSONAPI::Resource
      attributes :title, :description, :maximum_time
      has_many :questions
      has_many :answer_sets
    end
  end
end    
