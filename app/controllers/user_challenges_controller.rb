class UserChallengesController < ApplicationController

  def new
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @user_challenge = UserChallenge.new(user_challenge_params)
    authorize @user_challenge
    @user_challenge.user = current_user
    redirect_to profile_path(@user_challenge.user) if @user_challenge.save
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:user_id, :challenge_id, :total_score)
  end
end
