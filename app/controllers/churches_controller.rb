# app/controllers/churches_controller.rb
class ChurchesController < ApplicationController
    def index
      @churches = Church.all
    end
  
    def show
      @church = Church.find(params[:id])
    end
  
    def new
      @church = Church.new
    end
  
    def create
      @church = Church.new(church_params)
      if @church.save
        redirect_to @church, notice: 'Church was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def church_params
      params.require(:church).permit(:name, :location)
    end
  end
  