module Api
	module V1
		class QuestionResource < JSONAPI::Resource
		  attributes :description, :marks, :time_of_question, :options, :correct_answer
      has_one :quiz
      has_many :answers
    end
	end	
end