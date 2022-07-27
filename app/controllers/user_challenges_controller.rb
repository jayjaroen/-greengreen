class UserChallengesController < ApplicationController
  before_action :find_user_challenge, only: :show
  def show
    authorize @user_challenge
  end

  def new
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @user_challenge = UserChallenge.new(user_challenge_params)
    authorize @user_challenge
    @user_challenge.user = current_user
   redirect_to profile_path(@user_challenge.user) if @user_challenge.save
    # alert if the challenge is selected
    # switch alert / alert
    # JS
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:user_id, :challenge_id, :total_score)
  end

  def find_user_challenge
    @user_challenge = UserChallenge.find(params[:id])
  end
end
