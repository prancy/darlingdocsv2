class StudentsController < ApplicationController


    def index
        # if current_user.teacher
            # @students = current.user.teacher
        # end

        @students = Student.all
        puts @students
        @test = 'nancy'
    end
end