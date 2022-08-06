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
    @daily_scores_food = @user.user_challenge_records.of_category(ChallengeCategory.second).calc_score_by_date
    @daily_scores_elec = @user.user_challenge_records.of_category(ChallengeCategory.third).calc_score_by_date
    @daily_scores_trans = @user.user_challenge_records.of_category(ChallengeCategory.fourth).calc_score_by_date
    @daily_scores_plas = @user.user_challenge_records.of_category(ChallengeCategory.first).calc_score_by_date
    @daily_scores_re = @user.user_challenge_records.of_category(ChallengeCategory.fifth).calc_score_by_date
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
