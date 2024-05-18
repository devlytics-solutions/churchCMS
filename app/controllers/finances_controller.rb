# app/controllers/finances_controller.rb
class FinancesController < ApplicationController
    def index
      @finances = Finance.all
    end
  
    def new
      @finance = Finance.new
    end
  
    def create
      @finance = Finance.new(finance_params)
      if @finance.save
        redirect_to finances_path, notice: 'Finance record was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def finance_params
      params.require(:finance).permit(:date, :amount, :branch_id)
    end
  end
  