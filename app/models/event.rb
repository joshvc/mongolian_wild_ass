class Event < ActiveRecord::Base
  attr_accessible :date, :description, :distance, :early_date, :early_price, :late_price, :name, :regular_date, :regular_price, :tbd_info
end
