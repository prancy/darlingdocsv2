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

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(params.require(:student).permit(:name, :age, :gender))
      
        if @student.save
          redirect_to student_path(@student)
        else
          render :new
        end
      end

end