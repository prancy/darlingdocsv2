class UsersController < ApplicationController

  def index
    
  end

  def new
    @user = User.new
  end
    
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      @student = Student.new(student_params)
      @user.student = @student
        redirect_to users_path(@student)
    else
      render new_user_path
    end
  end
    
  private
    
    def user_params
      params.require(:user).permit(:first_name, :last_name, :is_teacher, :email, :password, :password_confirmation, :image)
    end
    def student_params
      params.permit(:name, :age, :gender)
    end
end