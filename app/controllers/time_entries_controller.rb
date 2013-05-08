class TimeEntriesController < ApplicationController

  def index
    @time_entries = TimeEntry.all
  end

  def show
    @time_entry = TimeEntry.find(params[:id])
  end

  def new
    @user = User.find params[:user_id]
    @time_entry = @user.time_entries.new
    @time_entry.time_in = Time.now.strftime("%I:%H %p")
  end

  def edit
    @time_entry = TimeEntry.find params[:id]
  end

  def create
    @user = User.find params[:user_id]

    t = TimeEntry.new(params[:time_entry])
    t.save

    flash[:notice] = "create"

    #redirect_to user_time_entry_path(@user, t)
    redirect_to [ @user, t]
  end

  def update
    @time_entry = TimeEntry.find(params[:id])
    @time_entry.update_attributes(params[:time_entry])

    flash[:notice]="records updated"
    redirect_to time_entry_path(@time_entry)
  end

  def destroy
    time_entry = TimeEntry.find(params[:id])
    time_entry.destroy

    redirect_to time_entries_path
  end

end

