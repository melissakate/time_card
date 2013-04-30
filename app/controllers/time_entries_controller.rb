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
end

