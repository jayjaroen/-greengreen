class UserChallengesController < ApplicationController
  before_action :find_user_challenge, only: :show
  def show
    authorize @user_challenge
  end

  def new
  end

  def create
    p @challenge = Challenge.find(params[:challenge_id])

    @user_challenge = UserChallenge.new #(user_challenge_params)
    @user_challenge.challenge = @challenge
    authorize @user_challenge
    @user_challenge.user = current_user
    p @user_challenge.save! #if
    # alert if the challenge is selected
    respond_to do |format|
      format.js
    end
    # redirect_to profile_path(@user_challenge.user)
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:user_id, :challenge_id, :total_score)
  end

  def find_user_challenge
    @user_challenge = UserChallenge.find(params[:id])
  end
end
