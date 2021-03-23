class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @user_opinions = @user.opinions.ordered_by_most_recent
  end
end
