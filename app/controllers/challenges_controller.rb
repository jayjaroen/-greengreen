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
    # @challenge_category = ChallengeCategory.find(params[:challenge_category_id])
    @challenge = Challenge.new(challenge_params)
      if @challenge.save
        render 'index'
      end
  end

  private
  def find_challenge_params
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:action, :carbon_score, :point, :challenge_category_id)
  end
end
