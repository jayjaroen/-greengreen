class ChallengesController < ApplicationController
  before_action :find_challenge_params, only: :show

  def index
    @challenge_category = ChallengeCategory.find(params[:challenge_category_id])
    @challenges = @challenge_category.challenges
  end

  def show
  end

  private
  def find_challenge_params
    @challenge = Challenge.find(params[:id])
  end
end
