class StudentsController < ApplicationController


    def index
        # if current_user.teacher
            # @students = current.user.teacher
        # end

        @students = Student.all
        @test = 'nancy'
    end
    # @bean = Bean.find(params[:id])
    def show
        @student = Student.find(params[:id])
    end

end