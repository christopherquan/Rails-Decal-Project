class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def join
  	u = current_user
    u.club_id = params[:id]
    u.save!
    redirect_to current_user
  end

end