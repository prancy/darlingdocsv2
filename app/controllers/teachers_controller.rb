class TeachersController < ApplicationController
  
    def index
    end

    def show
      @students = Student.available
    end
  
    def new
      @teacher = Teacher.new
    end
      
    def create
      @teacher = Teacher.new(teacher_params)
      if @teacher.save
        session[:user_id] = @teacher.id
        session[:is_teacher] = true
        redirect_to students_path
      else
        redirect_to new_teacher_path
      end
    end
      
    private
      
      def teacher_params
        params.require(:teacher).permit(:first_name, :last_name, :email, :password, :password_confirmation)
      end
  end
