class UsersController < ApplicationController

  before_filter :authenticate_user, only: [:edit]

  def index

  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Profile Updated"
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def authenticate_user
    if !user_signed_in?
      redirect_to users_path
    elsif current_user.id != params[:id].to_i
      redirect_to edit_user_path(current_user)
    end

  end
end
