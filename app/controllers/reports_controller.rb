class ReportsController < ApplicationController
    
    def index
        @reports = Report.all
    end
    
    def new
        @report = Report.new
    end
        
    def create
        @student = Student.find(params[:student_id])
            @student.reports.create(params.require(:report).permit(:participation, :homework, :behavior))
        redirect_to student_path(params[:student_id])
    end
end