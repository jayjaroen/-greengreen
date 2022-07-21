class UsersController < ApplicationController
before_action :find_user, only: [:edit, :update]

  def profile
    @user = current_user
    @challenges = @user.challenges
    @user_challenges = @user.user_challenges
    authorize @user
  end

  def edit
    authorize @user
  end

  def update
    authorize @user
    if @user.update(user_params)
      redirect_to profile_path(@user)
    else
      render 'edit'
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :photo)
  end

end
