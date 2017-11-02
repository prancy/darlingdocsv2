class StudentsController < ApplicationController

    def index
        @students = current_user.students
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end
    
    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update_attributes(params.require(:student).permit(:name, :age, :gender))
            redirect_to students_path
        else
            render :edit
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path
    end

    def enroll
        Student.find(params[:id]).update_attributes(teacher_id: current_user.id)
        redirect_to students_path
    end

end

