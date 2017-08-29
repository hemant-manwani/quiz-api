module Api
  module V1
    class AnswerSetsController < JSONAPI::ResourceController
      def assign_grade
        answer_set = AnswerSet.find(params[:id])
        grade_cal = GradeService.new(answer_set)
        result = grade_cal.calculate_marks
        if result.present?
          answer_set.update_attributes(total_gained_marks: result[0], grade: result[2])
        end
        resource = json_api_resource.new(answer_set, nil)
        render json: serializer.serialize_to_hash(resource).merge({summary: result[1]}) 
      end

      private

      def serializer
        JSONAPI::ResourceSerializer.new(json_api_resource)
      end

      def json_api_resource
        "Api::V1::#{controller_name.singularize.classify}Resource".constantize
      end
    end
  end
end    
