class UsersController < ApplicationController
before_action :find_user, only: [:edit, :update]

  def profile
    @user = current_user
    @challenges = @user.challenges
    @user_challenges = @user.user_challenges
    @data = CategoryScore.joins(:user).where(user: current_user).includes(:challenge_category).group('challenge_categories.name').sum(:score)
    authorize @user
  end

  def tracking_record
    # multi series data for daily score / loggin record daily
    @user = current_user
    authorize @user
  end

  def edit
    authorize @user
  end

  def update
    authorize @user
    if @user.update(user_params)
      redirect_to profile_path
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
