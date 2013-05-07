class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    params[:user] = {}
    params[:user][:first_name] = params[:first_name]
    params[:user][:last_name] = params[:last_name]
    params[:user][:middle_name]= params[:middle_name]
    params[:user][:course] = params[:course]
    params[:user][:year] = params[:year]
    params[:user][:company] = params[:company]
    params[:user][:started_at] = params[:started_at]
    params[:user][:ended_at] = params[:ended_at]

    @user = User.new(params[:user])
    @user.save

    flash[:notice] = "Record Created"
   # redirect_to action: "index"
    redirect_to users_path
  end
  def new
    @user = User.new
  end

  def edit
    id = params[:id]

    @user = User.find(id)

  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    flash[:notice] = "Record Deleted"
    redirect_to action: "index"
  end

  def update
    
    @user = User.find(params[:id])
    params[:user] ={}
    params[:user][:first_name] = params[:first_name]
    params[:user][:middle_name] = params[:middle_name]
    params[:user][:last_name] = params[:last_name]
    params[:user][:course] = params[:course]
    params[:user][:year] = params[:year]
    params[:user][:company] = params[:company]
    params[:user][:started_at] = params[:started_at]
    params[:user][:ended_at] = params[:ended_at]
    @user.update_attributes(params[:user])
    flash[:notice] = "Record Updated"
    redirect_to users_path
  end
end
