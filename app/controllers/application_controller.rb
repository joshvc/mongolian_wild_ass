class ApplicationController < ActionController::Base
  protect_from_forgery

  def next_event
    Event.next
  end
  helper_method :next_event
end
