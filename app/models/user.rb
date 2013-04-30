class User < ActiveRecord::Base
  attr_accessible :company, :course, :ended_at, :first_name, :last_name, :middle_name, :started_at, :year
end
