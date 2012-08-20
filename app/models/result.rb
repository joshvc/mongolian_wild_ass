class Result < ActiveRecord::Base
  attr_accessible :event_id, :place, :time, :user_id,
    :gun_mm, :gun_ss, :chip_mm, :chip_ss, :race_again,
    :survey, :notes

  belongs_to :user
  belongs_to :event

  before_update :total_times

  def total_times
    self.chip_time = chip_mm * 60 + chip_ss
    self.gun_time = gun_mm * 60 + gun_ss
    binding.pry
  end
end
