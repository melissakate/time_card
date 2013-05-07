class TimeEntriesController < ApplicationController

  def index
    @time_entries = TimeEntry.all
  end

  def show
    @time_entry = TimeEntry.find(params[:id])
  end

  def new
    @time_entry = TimeEntry.new
    @time_entry.time_in = Time.now.strftime("%I:%H %p")
    @time_entry.time_out = Time.now.strftime("%I:%H %p")
  end

  def edit
    id = params[:id]
    @time_entry = TimeEntry.find(id)
  end

  def create
    t = TimeEntry.new(params[:time_entry])
    t.save
    flash[:notice] = "create"
    redirect_to action: "index"
  end

  def update
    @time_entry = TimeEntry.find(params[:id])
    @time_entry.update_attributes(params[:time_entry])

    flash[:notice]="records updated"
    redirect_to action: "show", id: @time_entry.id
  end

  def destroy
    time_entry = TimeEntry.find(params[:id])
    time_entry.destroy
    redirect_to action: "index"
  end

end

