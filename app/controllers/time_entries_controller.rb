class TimeEntriesController < ApplicationController

  def index
    @time_entries = TimeEntry.all
  end

  def show
      @user = User.find(params[:user_id])
   @time_entry = TimeEntry.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @time_entry = @user.time_entries.new
    @time_entry.time_in = Time.now.strftime("%I:%H %p")
  end

  def edit
     @user = User.find(params[:user_id])
    @time_entry = TimeEntry.find params[:id]
  end

  def create
<<<<<<< HEAD
    @user = User.find params[:user_id]

    t = TimeEntry.new(params[:time_entry])
    t.save

    flash[:notice] = "create"

    #redirect_to user_time_entry_path(@user, t)
    redirect_to [ @user, t]
=======
    @user = User.find(params[:user_id])
    t = @user.TimeEntry.new(params[:time_entry]) 
    t.save

    flash[:notice] = "create"
    
    redirect_to [@user,t]
>>>>>>> d32d7d211e45804924595ffd9f7f06ace41d7cd2
  end

  def update
    @user = User.find params[:user_id]
    @time_entry = @user.TimeEntry.find params[:id]
    
     @time_entry.update_attributes(params[:id])

    flash[:notice]="records updated"
  end

  def destroy
    time_entry = TimeEntry.find(params[:id])
    time_entry.destroy

    redirect_to user_time_entries_path
  end

end

