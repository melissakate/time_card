class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def create
    u = User.new(params[:user])
    u.save

    flash[:notice] = "Record Created"
    redirect_to user_path(u)
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])

    flash[:notice] = "Record Updated"
    redirect_to user_path(@user)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    flash[:notice] = "Record Deleted"
    redirect_to users_path
  end

end
