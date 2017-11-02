class UsersController < ApplicationController

  def index
    @student = Student.new
  end

  def new
    # Provide the model instance to the form_for helper
    @user = User.new
  end
    
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      if @user.is_teacher
        redirect_to students_path
      else
        redirect_to new_student_path
      end
    end
  end
    
  private
    
    def user_params
      params.require(:user).permit(:first_name, :last_name, :is_teacher, :email, :password, :password_confirmation, :image)
    end
end