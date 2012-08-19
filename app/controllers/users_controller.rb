class UsersController < ApplicationController

  before_filter :authenticate_user, on: [:edit]

  def index

  end

  def edit

  end

  def update

  end

  def show
    @user = User.find(params[:id])
  end

  private

  def authenticate_user
    if !user_signed_in?
      redirect_to users_path
    elsif current_user.id != params[:id].to_i && !current_user.admin?
      redirect_to edit_user_path(current_user)
    end

  end
end
