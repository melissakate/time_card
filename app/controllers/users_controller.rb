class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    t = User.new
    t.first_name = params[:first_name]
    t.middle_name= params[:middle_name]
    t.last_name = params[:last_name]
    t.course = params[:course]
    t.year = params[:year]
    t.company = params[:company]
    t.started_at = params[:started_at] 
    t.ended_at = params[:ended_at]
    t.save
    redirect_to action: "index"
  end
end
