# app/controllers/attendances_controller.rb
class AttendancesController < ApplicationController
    def index
      @attendances = Attendance.all
    end
  
    def new
      @attendance = Attendance.new
    end
  
    def create
      @attendance = Attendance.new(attendance_params)
      if @attendance.save
        redirect_to attendances_path, notice: 'Attendance was successfully recorded.'
      else
        render :new
      end
    end
  
    private
  
    def attendance_params
      params.require(:attendance).permit(:date, :member_id)
    end
  end
  