class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
    @user.photo.attach(params[:photo])
  end

  def show
    @user = User.find(params[:id])
    @user_opinions = @user.opinions.ordered_by_most_recent
  end

  def follow
    @user = User.find(params[:id])
    current_user.followees << @user
    redirect_back(fallback_location: users_path(@user))
  end
  
  def unfollow
    @user = User.find(params[:id])
    current_user.followed_users.find_by(followee_id: @user.id).destroy
    redirect_back(fallback_location: users_path(@user))
  end
end
