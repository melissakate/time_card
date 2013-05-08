class TimeEntriesController < ApplicationController

  before_filter :find_user

  def index
    @time_entries = @user.time_entries.all
  end

  def show
    @time_entry = @user.time_entries.find(params[:id])
  end

  def new
    @time_entry.time_in = Time.now.strftime("%I:%H %p")
  end

  def edit
    @time_entry = @user.time_entries.find params[:id]
  end

  def create
    t = @user.time_entries.new()
    t.time_in = Time.now
    t.save

    flash[:notice] = "You successfully timed in"
    redirect_to users_path
  end

  def update
    @time_entry = @user.time_entries.find params[:id]

    @time_entry.update_attributes(params[:id])

    flash[:notice]="records updated"
    redirect_to user_time_entry_path(@user, @time_entry)
  end

  def destroy
    time_entry = TimeEntry.find(params[:id])
    time_entry.destroy

    redirect_to user_time_entries_path(@user)
  end





  private

    def find_user
      @user = User.find(params[:user_id])
    end

end

