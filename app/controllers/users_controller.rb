class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new
    t = @user
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
  def delete
    user = User.find(params[:id])
    user.destroy
    redirect_to action: "index"
  end
  def update
    z= params[:id]
    a = User.find(z)
    a.first_name = params[:first_name]
    a.middle_name= params[:middle_name]
    a.last_name = params[:last_name]
    a.course = params[:course]
    a.year = params[:year]
    a.company = params[:company]
    a.started_at = params[:started_at] 
    a.ended_at = params[:ended_at]
    a.save
    redirect_to action: "show" , id: z
    @fn = params[:first_name]
    @mn = params[:middle_name]
    @ln = params[:last_name]
    @cr = params[:course]
    @yr = params[:year]
    @cm = params[:company]
    @sa = params[:started_at]
    @ea = params[:ended_at]
  end
end
