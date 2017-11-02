class TeachersController < ApplicationController
  
    def index
    end
  
    def new
      @teacher = Teacher.new
    end
      
    def create
      @teacher = Teacher.new(teacher_params)
      if @teacher.save
        session[:teacher_id] = @teacher.id
        redirect_to teachers_path
      else
        redirect_to teacher_students_path
      end
    end
      
    private
      
      def teacher_params
        params.require(:teacher).permit(:first_name, :last_name, :email, :password, :password_confirmation)
      end
  end
