class Event < ActiveRecord::Base
  attr_accessible :date, :description, :distance, :early_date, :early_price, 
    :late_price, :name, :regular_date, :regular_price, :tbd_info,
    :url, :location, :measure, :bonus, :tentative

  has_many :results
  has_many :users, through: :results

  scope :upcoming, where('date > ?', Time.now)
  scope :non_bonus, where('bonus IS NOT true')
  scope :previous, where('date < ?', Time.now).order('date')

  def self.next
    self.upcoming.non_bonus.order('date').first
  end
end
