class TimeEntry < ActiveRecord::Base
  attr_accessible :user_id, :accomplishments, :date, :remarks, :time_in, :time_out

  belongs_to :user

  def time_in
    value = read_attribute(:time_in)
    value.strftime("%I:%M %p") if value.present?
  end

  def time_out
    value = read_attribute(:time_out)
    value.strftime("%I:%M %p") if value.present?
  end

end
