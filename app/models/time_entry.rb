class TimeEntry < ActiveRecord::Base
  attr_accessible :accomplishments, :date, :remarks, :time_in, :time_out
end
