class ChallengeCategoriesController < ApplicationController
before_action :find_challenge_category, only: :show

  def index
    @challenge_categories = ChallengeCategory.all
    @challenge_categories = policy_scope(ChallengeCategory).order(created_at: :desc)
  end

  def show
  end

  def new
    @challenge_category = ChallengeCategory.new
    authorize @challenge_category
  end

  def create
    @challenge_category = ChallengeCategory.new(challenge_category_params)
    authorize @challenge_category
      if @challenge_category.save
        redirect_to challenge_categories_path
      end
  end

  private

  def find_challenge_category
    @challenge_category = ChallengeCategory.find(params[:id])
  end

  def challenge_category_params
    params.require(:challenge_category).permit(:name, :description)
  end
end
