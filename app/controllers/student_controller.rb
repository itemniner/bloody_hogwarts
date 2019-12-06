class StudentController < ApplicationController
    def index
        # if params[:course_id]
        # @course = Course.find(params[:course_id])
        # else
        @students = Student.all
        # end
    end

    def show 
        @student = Student.find(params["student_id"])
    end
end