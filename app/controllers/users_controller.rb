class UsersController < ApplicationController
before_action :find_user, only: [:edit, :update]

  def profile
    @user = current_user
    @challenges = @user.challenges
    @user_challenges = @user.user_challenges
    @data = CategoryScore.joins(:user).where(user: current_user).includes(:challenge_category).group('challenge_categories.name').sum(:score)
    authorize @user
    @location = Location.find_by(country: @user.country)
  end

  def tracking_record
    # multi series data for daily score / loggin record daily
    # total score by day / group by category
    @user = current_user
    @data = CategoryScore.joins(:user).where(user: current_user).includes(:challenge_category).group('challenge_categories.name').sum(:score)
    @daily_scores = UserChallengeRecord.includes(:challenge).includes(:user_challenge).where(user_challenge: {user: current_user}).group(:date).sum('challenges.carbon_score')
    # @user.user_challenges.challenge.sum(:carbon_score).group_by_week(:created_at)
    # @current_user.spendings.group(:date).sum(:amount)
    # group by challenge_cate -- for each category --
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
