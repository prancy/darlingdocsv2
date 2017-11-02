class UsersController < ApplicationController

  def index
    @student = Student.all
    
  end

  def new
    @user = User.new
  end
    
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      redirect_to root_path
    end
  end
    
  private
    
    def user_params
      params.require(:user).permit(:first_name, :last_name, :is_teacher, :email, :password, :password_confirmation, :image)
    end
end