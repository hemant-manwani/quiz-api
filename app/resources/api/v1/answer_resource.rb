module Api
  module V1
    class AnswerResource < JSONAPI::Resource
      attributes :given_answer
      has_one :answer_set
      has_one :question
    end
  end
end    
