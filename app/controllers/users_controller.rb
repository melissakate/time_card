class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create

       t = User.new(params[:user])
    t.save
    flash[:notice] = "Record Created"
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
   @user.update_attributes(params[:user])
    flash[:notice] = "Record Updated"
    redirect_to users_path
  end
end
