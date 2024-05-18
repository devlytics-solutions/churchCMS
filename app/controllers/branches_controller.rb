# app/controllers/branches_controller.rb
class BranchesController < ApplicationController
  before_action :authenticate_user!
    def index
      @branches = Branch.all
    end
  
    def show
      @branch = Branch.find(params[:id])
    end
  
    def new
      @branch = Branch.new
    end
  
    def create
      @branch = Branch.new(branch_params)
      if @branch.save
        redirect_to @branch, notice: 'Branch was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def branch_params
      params.require(:branch).permit(:name, :location, :church_id)
    end
  end
  