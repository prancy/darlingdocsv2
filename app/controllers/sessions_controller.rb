class SessionsController < ApplicationController

    def new
    end
    
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            session[:is_teacher] = nil
            redirect_to student_path(user.student), notice: 'Logged in!'
        else
            user = Teacher.find_by(email: params[:email])
            if user && user.authenticate(params[:password])
                session[:user_id] = teacher.id
                session[:is_teacher] = true
                redirect_to students_path notice: 'Logged in!'
            else
                flash.now.alert = 'Invalid login credentials - try again!'
                render :new
            end
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out!"
    end
end