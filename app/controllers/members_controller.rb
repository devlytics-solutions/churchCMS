# app/controllers/members_controller.rb
class MembersController < ApplicationController
  before_action :authenticate_user!
    def index
      @members = Member.all
    end
  
    def show
      @member = Member.find(params[:id])
    end
  
    def new
      @member = Member.new
    end
  
    def create
      @member = Member.new(member_params)
      if @member.save
        redirect_to @member, notice: 'Member was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def member_params
      params.require(:member).permit(:name, :email, :branch_id)
    end
  end
  