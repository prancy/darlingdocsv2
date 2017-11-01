class ReportsController < ApplicationController
    
    def index
        @reports = Report.all
    end
    
    def new
        @report = Report.new
    end
        
    def create
        @report = Report.new(params.require(:report).permit(:particiption, :homework, :behavior))
        
          if @report.save
            redirect_to reports_path
          else
            render :new
          end
    end
end