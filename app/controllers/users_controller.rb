class UsersController < ApplicationController
  def profile
    @user = current_user
    @challenges = @user.challenges
    authorize @user
  end
end
