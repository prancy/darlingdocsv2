class ReportsController < ApplicationController
    
    def index
        @reports = Report.all
    end
    
    def new
        @report = Report.new
    end
        
    def create
        puts 'aosdijfaoisdfoaisjdfaiosjdfoaisjdfoaisf'
        @student = Student.find(params[:student_id])
        data = params.require(:report).permit(:participation, :homework, :behavior)
        data[:teacher_id] = current_user.id
        if @student.reports.create(data)
            redirect_to student_path(params[:student_id])
        else
            redirect_to new_student_report_path
        end
    end

    def edit
        @report = Report.find(params[:id])
      end

   


    def destroy
        @report = Report.find(params[:id])
        @report.destroy
        redirect_to student_path(params[:student_id])
    end


    
end