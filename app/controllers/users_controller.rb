class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    @followed = @user.followed_users
    @follower = @user.followers
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
