class GradeService
  def initialize(answer_set)
    @answer_set = answer_set
    @answers = @answer_set.answers
  end

  def calculate_marks
    summary = []
    obtained_marks = 0
  	@answers.each do |answer|
      question = answer.question
  		if answer.given_answer.sort.eql? question.correct_answer.sort
        status = 'correct'
        obtained_marks+= question.marks 
      else
        status = 'incorrect'
      end
      summary << {user: @answer_set.candidate_name, result: status, question_id: question.id}
  	end
    return obtained_marks.to_f, summary, calculate_grade(obtained_marks.to_f)
  end

  def calculate_grade(marks)
    avg = (marks.to_f / @answer_set.questions.sum(:marks).to_f) * 100 
    case avg
    when 10..30
      "D"
    when 31..50
      "C"
    when 51..75
      "B"
    when 75..90
      "A"
    else
      "A+"
    end  

  end  
end