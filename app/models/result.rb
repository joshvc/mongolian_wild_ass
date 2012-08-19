class Result < ActiveRecord::Base
  attr_accessible :event_id, :place, :time, :user_id

  belongs_to :user
  belongs_to :event
end
