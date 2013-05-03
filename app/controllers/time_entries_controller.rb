class TimeEntriesController < ApplicationController
  def index
    @time_entries = TimeEntry.all
  end

  def create
    t= TimeEntry.new
    t.date = params[:date]
    t.time_in = params[:time_in]
    t.time_out = params[:time_out]
    t.accomplishments = params[:accomplishments]
    t.remarks = params[:remarks]
    t.save
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
  end


  def destroy
    time_entry = TimeEntry.find(params[:id])
    time_entry.destroy
    redirect_to action: "index"
  end
  def update
    id = params[:id]
    @time_entry = TimeEntry.find(id)

    t= TimeEntry.find(id)
    t.date = params[:date]
    t.time_in = params[:time_in]
    t.time_out = params[:time_out]
    t.accomplishments = params[:accomplishments]
    t.remarks = params[:remarks]
    t.save
    redirect_to action: "show", id: @time_entry.id
  end

end

