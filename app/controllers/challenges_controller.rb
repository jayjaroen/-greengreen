class ChallengesController < ApplicationController
  before_action :find_challenge_params, only: :show

  def index
    @challenge_category = ChallengeCategory.find(params[:challenge_category_id])
    @challenges = @challenge_category.challenges
    @challenge = policy_scope(Challenge).order(created_at: :desc)
  end

  def show
  end

  def new
    @challenge = Challenge.new
    authorize @challenge
  end

  def create
    @challenge = Challenge.new(challenge_params)
    authorize @challenge
      if @challenge.save
        redirect_to challenge_category_challenges_path(@challenge.challenge_category)
      end
  end

  private
  def find_challenge_params
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:action, :carbon_score, :point, :challenge_category_id, :photo)
  end
end
