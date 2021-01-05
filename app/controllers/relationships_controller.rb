class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.follow(params[:user_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.unfollow(params[:user_id]).destroy
    redirect_back(fallback_location: root_path)
  end

  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end

  def follwers
    user = User.find(params[:user_id])
    @users = user.follwers
  end
end
