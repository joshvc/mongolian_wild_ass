class ResultsController < ApplicationController
  def create
    if user_signed_in?
      @result = Result.new(user_id:current_user.id,
                           event_id: params[:result][:event_id])
      @result.save
      flash[:success] = "You're In!"
      redirect_to event_path(@result.event)
    end
  end

  def show

  end

  def edit
    @result = Result.find(params[:id])
  end

  def index
    @user = User.find(params[:user_id])
    @results = @user.results.sort_by{|r|r.event.date}
  end

  def update
    @result = Result.find(params[:id])
    if @result.update_attributes(params[:result])
      flash[:success] = "Result Logged"
      redirect_to user_results_path(@result.user)
    end
  end
end
