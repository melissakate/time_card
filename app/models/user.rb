class User < ActiveRecord::Base
  attr_accessible :company, :course, :ended_at, :first_name, :last_name, :middle_name, :started_at, :year , :user_id
  has_many :time_entries

  def started_at
    value = read_attribute(:started_at)
    value.strftime("%I:%M %p") unless value.blank?
  end

  def ended_at
    value = read_attribute(:ended_at)
    value.strftime("%I:%M %p") unless value.blank?
  end
end
