class TimeEntriesController < ApplicationController
  def index
    @time_entries = TimeEntry.all
  end

  def create

    params[:time_entry] = {}
    params[:time_entry][:date] = params[:date]
    params[:time_entry][:time_in] = params[:time_in]
    params[:time_entry][:time_out] = params[:time_out]
    params[:time_entry][:accomplishments] = params[:accomplishments]
    params[:time_entry][:remarks] = params[:remarks]

    t=  TimeEntry.new(params[:time_entry])
    t.save
    flash[:notice] = "create"
    redirect_to action: "index"
  end


  def show
    @time_entry = TimeEntry.find(params[:id])
  end
  def edit
    id = params[:id]
    @time_entry = TimeEntry.find(id)
  end
  def c1 

    t= TimeEntry.new
    t.date = params[:date]
    t.time_in = params[:time_in]
    t.time_out = params[:time_out]
    t.accomplishments = params[:accomplishments]
    t.remarks = params[:remarks]
    t.save
    redirect_to action: "index"
  end
  def new
    @time_entry = TimeEntry.new
    @time_entry.time_in = Time.now.strftime("%I:%H %p")
    @time_entry.time_out = Time.now.strftime("%I:%H %p")
  end


  def destroy
    time_entry = TimeEntry.find(params[:id])
    time_entry.destroy
    redirect_to action: "index"
  end
  def update
    @time_entry = TimeEntry.find(params[:id])
    params[:time_entry] = {}
    params[:time_entry][:date] = params[:date]
    params[:time_entry][:time_in] = params[:time_in]
    params[:time_entry][:time_out] = params[:time_out]
    params[:time_entry][:accomplishments] = params[:accomplishments]
    params[:time_entry][:remarks] = params[:remarks]
    t.update_attributes(params[:time_entry])

    flash[:notice]="recors updated"
    redirect_to action: "show", id: @time_entry.id
  end

end

